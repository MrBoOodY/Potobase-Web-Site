import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapphomeclone/widgets/top_nav_bar.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopNavBar(),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                child: IntrinsicHeight(
                  child: Row(
                    children: const [
                      CustomDownloadColumn(
                        color: Color(0xffE7F0E4),
                        title: 'Android',
                        image: 'assets/android.png',
                        downloadLink:
                            'https://play.google.com/store/apps/details?id=com.oyary.oyary&hl=en&gl=US',
                        downloadLogo: 'assets/android_download.png',
                      ),
                      SizedBox(width: 25.0),
                      CustomDownloadColumn(
                        color: Color(0xffFCF2C6),
                        title: 'IOS',
                        image: 'assets/ios.png',
                        downloadLink: 'https://apps.apple.com/app/1629603289',
                        downloadLogo: 'assets/apple_download.png',
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
    return Expanded(
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
            Text(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              image,
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.25,
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
                    width: MediaQuery.of(context).size.width * 0.2,
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
