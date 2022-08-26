import 'package:flutter/widgets.dart';
import 'package:potobase_web_site/view/about_us_page.dart';
import 'package:potobase_web_site/view/contact_us_page.dart';
import 'package:potobase_web_site/view/download_page.dart';
import 'package:potobase_web_site/view/help_center/help_center_page.dart';
import 'package:potobase_web_site/view/home_page.dart';

class Routes {
  static const home = '/';
  static const download = '/download';
  static const security = '/security';
  static const helpCenter = '/help-center';
  static const aboutUs = '/about-us';
  static const contactUs = '/contact-us';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomePage(),
    download: (BuildContext context) => const DownloadPage(),
    helpCenter: (BuildContext context) => const HelpCenterPage(),
    aboutUs: (BuildContext context) => const AboutUsPage(),
    contactUs: (BuildContext context) => const ContactUsPage(),
  };
}
