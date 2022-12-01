import 'package:flutter/material.dart';
import 'package:ppodb_2/page/home/home.dart';
import 'package:ppodb_2/page/main_page/main_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
           ResponsiveBreakpoint.resize(320, name: MOBILE),
           ResponsiveBreakpoint.autoScale(800, name: TABLET),
           ResponsiveBreakpoint.autoScale(1200, name: DESKTOP)
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",
      home: MainPage(),
    );
  }
}

