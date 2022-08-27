import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/view/help_center/sections/customer_focus.dart';
import 'package:potobase_web_site/view/help_center/sections/faqs.dart';
import 'package:potobase_web_site/view/help_center/sections/premium_screen.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({Key? key}) : super(key: key);

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  List<Widget> buttonsPage = const [
    FAQsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopNavBar(),
        Expanded(
            child: ListView(
          children: [
            Image.asset(
              AppAssets.helpCenterBanner,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
            const CustomHelpCenterButton(
              title: 'FAQs',
              subTitle: 'Find What You Are Looking For',
              child: FAQsScreen(),
            ),
            const CustomHelpCenterButton(
              title: 'CUSTOMER FOCUS',
              subTitle: 'Meetings and chats',
              child: CustomerFocusScreen(),
            ),
            const CustomHelpCenterButton(
              title: 'Premium',
              subTitle: 'Find What You Are Not Understanding',
              child: PremiumScreen(),
            ),
          ],
        ))
      ]),
    );
  }
}

class CustomHelpCenterButton extends StatelessWidget {
  const CustomHelpCenterButton({
    Key? key,
    required this.title,
    required this.child,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  final Widget child;
  static const TextStyle _textStyle = TextStyle(
      color: AppColors.helpCenterButtonText,
      fontWeight: FontWeight.w900,
      fontSize: 24);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ExpansionTile(
        collapsedBackgroundColor: AppColors.helpCenterButtonColor,
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        backgroundColor: AppColors.helpCenterButtonColor,
        trailing: const SizedBox.shrink(),
        initiallyExpanded: false,
        title: DecoratedBox(
          decoration:
              const BoxDecoration(color: AppColors.helpCenterButtonColor),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: _textStyle,
                ),
                const SizedBox(height: 20.0),
                Text(
                  subTitle,
                  style: _textStyle.copyWith(
                      fontWeight: FontWeight.w200, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        children: [child],
      ),
    );
  }
}
