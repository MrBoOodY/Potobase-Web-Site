import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/utils/responsive.dart';
import 'package:potobase_web_site/widgets/app_drawer.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';
import 'package:selectable/selectable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double customPadding = MediaQuery.of(context).size.width - 1700;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: Responsive.isMobile(context) ? const TopNavBar() : null,
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        if (Responsive.isMobile(context))
          AppDrawer(scaffoldKey: scaffoldKey, isHome: true),
        if (!Responsive.isMobile(context)) const TopNavBar(),
        Expanded(
            child: Selectable(
          showSelection: true,
          selectWordOnDoubleTap: true,
          selectWordOnLongPress: true,
          child: ListView(
            children: [
              if (!Responsive.isMobile(context)) const SizedBox(height: 50.0),
              DecoratedBox(
                decoration: BoxDecoration(
                    color: !Responsive.isMobile(context)
                        ? null
                        : AppColors.navBarColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? MediaQuery.of(context).size.width * 0.8
                          : 300,
                      child: Column(
                        crossAxisAlignment: !Responsive.isMobile(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          if (Responsive.isMobile(context))
                            Image.asset(
                              AppAssets.potobase,
                              width: 80,
                            ),
                          const SizedBox(height: 50.0),
                          SelectableText(
                            'Simple. Secure.\nReliable.',
                            style: TextStyle(
                              fontSize: 33,
                              color: Responsive.isMobile(context)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            textAlign: !Responsive.isMobile(context)
                                ? TextAlign.start
                                : TextAlign.center,
                          ),
                          const SizedBox(height: 20.0),
                          SelectableText(
                            'With Potobase, enjoy fast selling, easy buying, and fast, simple, and secure communication that\'s free and available on phones anywhere in the world.',
                            style: TextStyle(
                                fontSize: 18,
                                height: 1.5,
                                color: Responsive.isMobile(context)
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w400),
                            textAlign: !Responsive.isMobile(context)
                                ? TextAlign.start
                                : TextAlign.center,
                          ),
                          if (Responsive.isMobile(context)) ...[
                            const SizedBox(height: 50.0),
                            Image.asset(
                              AppAssets.home1,
                              width: 300,
                            )
                          ]
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context)) ...[
                      const SizedBox(width: 120.0),
                      Image.asset(
                        AppAssets.home1,
                        width: 300,
                      )
                    ]
                  ],
                ),
              ),
              if (!Responsive.isMobile(context)) const SizedBox(height: 100.0),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: customPadding < 0 ? 0 : customPadding),
                child: Responsive.isMobile(context)
                    ? Column(
                        children: const [
                          FirstHomeColumnWidget(),
                          SecondHomeColumnWidget(),
                        ],
                      )
                    : IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 30.0),
                            Expanded(
                              child: FirstHomeColumnWidget(),
                            ),
                            SizedBox(width: 30.0),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SecondHomeColumnWidget(),
                              ),
                            ),
                            SizedBox(width: 30.0),
                          ],
                        ),
                      ),
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ))
      ]),
    );
  }
}

class SecondHomeColumnWidget extends StatelessWidget {
  const SecondHomeColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColors.androidBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(children: [
          const SelectableText(
            'Potobase App',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 34,
              height: 4,
            ),
          ),
          const SizedBox(height: 25.0),
          const SelectableText(
            'Potobase is an online buying and selling platform, meeting and instant discussion between buyers, sellers and friends. Potobase allows you to be informed in real time of offers and requests from advertisers.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25.0),
          const SelectableText(
            'On Potobase you can create an advertisement for your products and upload images and video for the products',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 75.0),
          Image.asset(
            AppAssets.home3,
            width: 300,
            height: 300,
          ),
        ]),
      ),
    );
  }
}

class FirstHomeColumnWidget extends StatelessWidget {
  const FirstHomeColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColors.homeCardColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(children: [
          const SelectableText(
            'Potobase App',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 34,
              height: 4,
            ),
          ),
          const SizedBox(height: 25.0),
          const SelectableText(
            'Potobase App is a free to download app that was built with the small business owner in mind. Create your products and services. Connect with your customers easily by using tools to automate, sort and quickly respond to messages.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25.0),
          const SelectableText(
            'Potobase can also help medium and large Stores provide customer support and deliver Products to customers.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 50.0),
          Image.asset(
            AppAssets.home2,
            width: 300,
            height: 300,
          ),
        ]),
      ),
    );
  }
}
