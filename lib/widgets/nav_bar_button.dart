import 'package:flutter/material.dart';
import 'package:potobase_web_site/utils/responsive.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;
  static const TextStyle _textStyle = TextStyle(
    fontSize: 18,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: _textStyle.copyWith(
            fontSize: Responsive.isTablet(context) ? 16 : 18,
          ),
        ),
      ),
    );
  }
}
