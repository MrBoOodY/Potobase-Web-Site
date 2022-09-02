import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/utils/responsive.dart';
import 'package:potobase_web_site/utils/routes.dart';
import 'package:potobase_web_site/widgets/app_drawer.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double customPadding = MediaQuery.of(context).size.width * 0.35 - 285;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: Responsive.isMobile(context) ? const TopNavBar() : null,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        if (Responsive.isMobile(context)) AppDrawer(scaffoldKey: scaffoldKey),
        if (!Responsive.isMobile(context)) const TopNavBar(),
        Expanded(
            child: SelectionArea(
          child: ListView(
            children: [
              Image.asset(
                AppAssets.contactUsBanner,
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.25,
                fit: BoxFit.cover,
              ),
              IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: customPadding < 0 ? 0 : customPadding),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.1),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                'CONTACT US',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 34,
                                  height: 4,
                                ),
                              ),
                              const Text(
                                'You Can Contact Us by downloading the app from google play store or app store then sign in to the app and finally you can contact us instantly.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  height: 1.5,
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, Routes.download);
                                  },
                                  child: const Text(
                                    'DOWNLOAD',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.blue,
                                      fontSize: 20,
                                      height: 4,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
