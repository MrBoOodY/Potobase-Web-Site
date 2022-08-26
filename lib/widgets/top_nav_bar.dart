import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_strings.dart';
import 'package:potobase_web_site/utils/navigation_history_observer.dart';
import 'package:potobase_web_site/utils/routes.dart';
import 'package:potobase_web_site/widgets/nav_bar_button.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  final NavigationHistoryObserver nav = NavigationHistoryObserver();
  navigate(String route) {
    if (nav.top?.settings.name != null) {
      if (nav.top!.settings.name == route) {
        return;
      } else {
        if (nav.top!.settings.name == Routes.home) {
          if (Routes.home == route) {
            return;
          }
          Navigator.pushNamed(context, route);
        } else {
          if (Routes.home == route) {
            Navigator.pop(context);
            return;
          }
          Navigator.pushReplacementNamed(context, route);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Color(0xff128c7e)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  navigate(Routes.home);
                },
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.potobase,
                      width: 60,
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
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
                  navigate(Routes.download);
                },
                title: 'Download'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  navigate(Routes.aboutUs);
                },
                title: 'About Us'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  navigate(Routes.contactUs);
                },
                title: 'Contact Us'),
            const SizedBox(width: 50.0),
            NavBarButton(
                onTap: () {
                  navigate(Routes.helpCenter);
                },
                title: 'Help Center'),

            /*   const SizedBox(width: 50.0),
            const Icon(
              Icons.language,
              color: Colors.white,
            ), */
          ],
        ),
      ),
    );
  }
}
