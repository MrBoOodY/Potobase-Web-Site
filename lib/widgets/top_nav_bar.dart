import 'package:flutter/material.dart';
import 'package:potobase_web_site/utils/navigation_history_observer.dart';
import 'package:potobase_web_site/utils/routes.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);
  static const TextStyle _textStyle = TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

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
                      'assets/potobase.png',
                      width: 60,
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      'Potobase',
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
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  navigate(Routes.download);
                },
                child: const Text(
                  'Download',
                  style: TopNavBar._textStyle,
                ),
              ),
            ),
            const SizedBox(width: 50.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  navigate(Routes.helpCenter);
                },
                child: const Text(
                  'Help Center',
                  style: TopNavBar._textStyle,
                ),
              ),
            ),
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
