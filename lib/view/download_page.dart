import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:potobase_web_site/constants/app_assets.dart';
import 'package:potobase_web_site/constants/app_colors.dart';
import 'package:potobase_web_site/utils/responsive.dart';
import 'package:potobase_web_site/widgets/app_drawer.dart';
import 'package:selectable/selectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double customPadding = MediaQuery.of(context).size.width * 0.35 - 500;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: Responsive.isMobile(context) ? const TopNavBar() : null,
      body: Column(children: [
        if (Responsive.isMobile(context)) AppDrawer(scaffoldKey: scaffoldKey),
        if (!Responsive.isMobile(context)) const TopNavBar(),
        Expanded(
          child: ListView(
            children: [
              if (Responsive.isMobile(context))
                Column(
                  children: const [
                    CustomDownloadColumn(
                      color: AppColors.androidBackgroundColor,
                      title: 'Android',
                      image: AppAssets.android,
                      downloadLink:
                          'https://play.google.com/store/apps/details?id=com.oyary.oyary&hl=en&gl=US',
                      downloadLogo: AppAssets.androidDownload,
                    ),
                    CustomDownloadColumn(
                      color: AppColors.iosBackgroundColor,
                      title: 'IOS',
                      image: AppAssets.ios,
                      downloadLink: 'https://apps.apple.com/app/1629603289',
                      downloadLogo: AppAssets.appleDownload,
                    ),
                  ],
                )
              else
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: customPadding < 0 ? 0 : customPadding),
                  child: IntrinsicHeight(
                    child: Row(
                      children: const [
                        Expanded(
                          child: CustomDownloadColumn(
                            color: AppColors.androidBackgroundColor,
                            title: 'Android',
                            image: AppAssets.android,
                            downloadLink:
                                'https://play.google.com/store/apps/details?id=com.oyary.oyary&hl=en&gl=US',
                            downloadLogo: AppAssets.androidDownload,
                          ),
                        ),
                        SizedBox(width: 25.0),
                        Expanded(
                          child: CustomDownloadColumn(
                            color: AppColors.iosBackgroundColor,
                            title: 'IOS',
                            image: AppAssets.ios,
                            downloadLink:
                                'https://apps.apple.com/app/1629603289',
                            downloadLogo: AppAssets.appleDownload,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        )
      ]),
    );
  }
}

class CustomDownloadColumn extends StatelessWidget {
  final String title;

  final String image;

  final String downloadLink;

  final Color color;

  final String downloadLogo;

  const CustomDownloadColumn({
    Key? key,
    required this.title,
    required this.downloadLogo,
    required this.image,
    required this.downloadLink,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri webDownloadLink = Uri.parse('potobase.com/download');

    return Selectable(
      showSelection: true,
      selectWordOnDoubleTap: true,
      selectWordOnLongPress: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(children: [
            const SizedBox(
              height: 100.0,
            ),
            SelectableText(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              image,
              width: 190,
              height: 350,
            ),
            const SizedBox(height: 10.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(downloadLink));
                  },
                  child: Image.asset(
                    downloadLogo,
                    width: 200,
                  )),
            ),
            const SizedBox(
              height: 50.0,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(fontSize: 24, height: 1.5),
                  children: [
                    const TextSpan(text: 'Visit '),
                    TextSpan(
                      text: webDownloadLink.path,
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(webDownloadLink);
                        },
                    ),
                    const TextSpan(text: ' on your mobile phone to install.'),
                  ]),
            ),
            const SizedBox(
              height: 50.0,
            ),
          ]),
        ),
      ),
    );
  }
}
