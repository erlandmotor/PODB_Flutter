import 'package:flutter/material.dart';
import 'package:ppodb_2/page/product/categoryhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: "inter"),
      home: CategoryProduct(),
    );
  }
}
