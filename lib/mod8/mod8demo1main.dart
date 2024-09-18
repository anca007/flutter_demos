import 'package:cours_flutter/mod8/mod8demo1page1.dart';
import 'package:cours_flutter/mod8/mod8demo1page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoRouteApp());
}

class Routes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      "/": (context) => PageOne(),
      "/page-deux": (context) => PageTwo(),
    };
  }
}

class DemoRouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo route",
      initialRoute: "/",
      routes: Routes.getRoutes(context),
    );
  }
}