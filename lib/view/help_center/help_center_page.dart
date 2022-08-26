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
    CustomerFocusScreen(),
    PremiumScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const TopNavBar(),
        /*  Image.asset(
          AppAssets.helpCenterBanner,
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        ), */
        IntrinsicHeight(
          child: Stack(
            children: [
              Image.asset(
                AppAssets.helpCenterBackground,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)
                    /*   gradient: LinearGradient(
                  colors: [Colors.black, Colors.black],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ) */
                    ),
                child: const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(0.1 * MediaQuery.of(context).size.width),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                      child: const SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    CustomHelpCenterButton(
                      isTop: true,
                      left: 50,
                      title: 'FAQs',
                      subTitle: 'Find What You Are Looking For',
                      onPressed: () {},
                    ),
                    CustomHelpCenterButton(
                      isTop: true,
                      right: 50,
                      title: 'CUSTOMER FOCUS',
                      subTitle: 'Meetings and chats',
                      onPressed: () {},
                    ),
                    CustomHelpCenterButton(
                      isBottom: true,
                      left: 50,
                      title: 'Premium',
                      subTitle: 'Find What You Are Not Understanding',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class CustomHelpCenterButton extends StatelessWidget {
  const CustomHelpCenterButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.subTitle,
    this.isTop = false,
    this.top,
    this.isBottom = false,
    this.left,
    this.right,
  }) : super(key: key);
  final String title;
  final String subTitle;

  final bool isTop;
  final bool isBottom;
  final double? top;
  final double? left;
  final double? right;
  final VoidCallback onPressed;
  static const TextStyle _textStyle = TextStyle(
      color: AppColors.helpCenterButtonText,
      fontWeight: FontWeight.w900,
      fontSize: 24);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: isTop ? -MediaQuery.of(context).size.width * 0.0435 : top,
      bottom: isBottom ? -MediaQuery.of(context).size.width * 0.0435 : null,
      left: left,
      right: right,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onPressed,
          child: DecoratedBox(
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
        ),
      ),
    );
  }
}
