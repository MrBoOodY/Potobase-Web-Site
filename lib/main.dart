import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:whatsapphomeclone/utils/navigationHistoryObserver.dart';
import 'package:whatsapphomeclone/utils/routes.dart';
import 'package:whatsapphomeclone/view/home_page.dart';

void main() {
  setPathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Potobase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      navigatorObservers: [
        NavigationHistoryObserver(),
      ],
    );
  }
}
