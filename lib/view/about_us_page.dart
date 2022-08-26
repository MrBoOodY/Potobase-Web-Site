import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(children: [
        const TopNavBar(),
        Expanded(
          child: ListView(
            children: [
              Image.asset(
                AppAssets.aboutUsBanner,
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2),
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text(
                            'About PotoBase',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                height: 3),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Welcome to Potobase, we are happy that you are here.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Nowadays people are more dependent on online products and services that\'s why we take a forward step to help you.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Our first wish is to provide you with a better solution in eCommerce. We will always do our best in bringing you top-rated products. PotoBase is also a development company that will also develop applications that will make life easier for our customers.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Potobase will also help you browse for the best products and know exactly what you want to buy even before you leave the comfort of your home.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'If you have additional questions or require more information about PotoBase, do not hesitate to contact us through email at the contact us page. Our main goal is to provide you with 100% Original and Safe content that provides you with a great and better experience. We mainly focus on our service so and improving it regularly to provide a better user experience to all users.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Thank you for Visiting Potobase. I hope you enjoy our services as much as we enjoy serving you.\nThank you',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
