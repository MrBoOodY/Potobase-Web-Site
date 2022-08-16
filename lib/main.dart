import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:potobase_web_site/utils/navigation_history_observer.dart';
import 'package:potobase_web_site/utils/routes.dart';

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
