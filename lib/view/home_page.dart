import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const TopNavBar(),
        Expanded(
            child: ListView(
          children: [
            const SizedBox(height: 50.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 50.0),
                      Text(
                        'Simple. Secure.\nReliable.',
                        style: TextStyle(fontSize: 33),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'With Potobase, enjoy fast selling, easy buying, and fast, simple, and secure communication that\'s free and available on phones anywhere in the world.',
                        style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 120.0),
                Image.asset(
                  AppAssets.home1,
                  width: MediaQuery.of(context).size.width * 0.15,
                )
              ],
            ),
            const SizedBox(height: 100.0),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: DecoratedBox(
                        decoration:
                            const BoxDecoration(color: AppColors.homeCardColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Column(children: [
                            const Text(
                              'Potobase App',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 34,
                                height: 4,
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const Text(
                              'Potobase App is a free to download app that was built with the small business owner in mind. Create your products and services. Connect with your customers easily by using tools to automate, sort and quickly respond to messages.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const Text(
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
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                            ),
                          ]),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              color: AppColors.androidBackgroundColor),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: Column(children: [
                              const Text(
                                'Potobase App',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 34,
                                  height: 4,
                                ),
                              ),
                              const SizedBox(height: 25.0),
                              const Text(
                                'Potobase is an online buying and selling platform, meeting and instant discussion between buyers, sellers and friends. Potobase allows you to be informed in real time of offers and requests from advertisers.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 25.0),
                              const Text(
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
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ))
      ]),
    );
  }
}
