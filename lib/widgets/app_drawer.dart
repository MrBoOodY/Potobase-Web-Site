import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/constants/app_strings.dart';
import 'package:potobase_web_site/utils/routes.dart';
import 'package:potobase_web_site/utils/utils.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
    required this.scaffoldKey,
    this.isHome = false,
  }) : super(key: key);
  final bool isHome;
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.navBarColor,
      ),
      child: Row(
          mainAxisAlignment:
              !isHome ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
          children: [
            if (!isHome)
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Utils.navigate(Routes.home, context);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.potobase,
                          width: 50,
                        ),
                        const SizedBox(width: 10.0),
                        const SelectableText(
                          AppStrings.title,
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ))
          ]),
    );
  }
}
