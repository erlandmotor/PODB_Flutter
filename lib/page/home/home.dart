
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/home/background.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Background(
             child: Boxkecil(
                child: ListTile(
                  title: Text("data"),
                )),),
    );
  }
}