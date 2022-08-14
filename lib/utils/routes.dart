import 'package:flutter/widgets.dart';
import 'package:whatsapphomeclone/view/download_page.dart';
import 'package:whatsapphomeclone/view/help_center_page.dart';
import 'package:whatsapphomeclone/view/home_page.dart';
import 'package:whatsapphomeclone/view/security_page.dart';

class Routes {
  static const home = '/';
  static const download = '/download';
  static const security = '/security';
  static const helpCenter = '/help-center';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomePage(),
    download: (BuildContext context) => const DownloadPage(),
    security: (BuildContext context) => const SecurityPage(),
    helpCenter: (BuildContext context) => const HelpCenterPage(),
  };
}
