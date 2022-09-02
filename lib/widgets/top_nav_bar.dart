import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/constants/app_strings.dart';
import 'package:potobase_web_site/utils/routes.dart';
import 'package:potobase_web_site/utils/utils.dart';
import 'package:potobase_web_site/widgets/nav_bar_button.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 720) {
      return DecoratedBox(
        decoration: const BoxDecoration(color: AppColors.navBarColor),
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppAssets.potobase,
                    width: 60,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ListTile(
                    title: NavBarButton(
                        onTap: () {
                          Utils.navigate(Routes.download, context);
                        },
                        title: 'DOWNLOAD'),
                  ),
                  const Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 0.5,
                    indent: 15,
                    endIndent: 15,
                  ),
                  ListTile(
                    title: NavBarButton(
                        onTap: () {
                          Utils.navigate(Routes.aboutUs, context);
                        },
                        title: 'ABOUT'),
                  ),
                  const Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 0.5,
                    indent: 15,
                    endIndent: 15,
                  ),
                  ListTile(
                    title: NavBarButton(
                        onTap: () {
                          Utils.navigate(Routes.contactUs, context);
                        },
                        title: 'CONTACT US'),
                  ),
                  const Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 0.5,
                    indent: 15,
                    endIndent: 15,
                  ),
                  ListTile(
                    title: NavBarButton(
                        onTap: () {
                          Utils.navigate(Routes.helpCenter, context);
                        },
                        title: 'HELP CENTER'),
                  ),
                  const Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 0.5,
                    indent: 15,
                    endIndent: 15,
                  ),
                ],
              ),
            )
          ]),
        ),
      );
    }
    return SizedBox(
      height: 80,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColors.navBarColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Utils.navigate(Routes.home, context);
                },
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.potobase,
                      width: 60,
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
            const SizedBox(width: 100.0),
            NavBarButton(
                onTap: () {
                  Utils.navigate(Routes.download, context);
                },
                title: 'DOWNLOAD'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  Utils.navigate(Routes.aboutUs, context);
                },
                title: 'ABOUT'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  Utils.navigate(Routes.contactUs, context);
                },
                title: 'CONTACT US'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  Utils.navigate(Routes.helpCenter, context);
                },
                title: 'HELP CENTER'),
          ],
        ),
      ),
    );
  }
}
