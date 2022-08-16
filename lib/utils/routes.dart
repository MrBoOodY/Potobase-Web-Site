import 'package:flutter/widgets.dart';
import 'package:potobase_web_site/view/download_page.dart';
import 'package:potobase_web_site/view/help_center_page.dart';
import 'package:potobase_web_site/view/home_page.dart';

class Routes {
  static const home = '/';
  static const download = '/download';
  static const security = '/security';
  static const helpCenter = '/help-center';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomePage(),
    download: (BuildContext context) => const DownloadPage(),
    helpCenter: (BuildContext context) => const HelpCenterPage(),
  };
}
