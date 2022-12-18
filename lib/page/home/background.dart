import 'package:flutter/material.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
   return Stack(
      children: [
        Container(
          width: double.infinity,
          height: heightt * 260 / 800,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/FAQ.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
        ),
        child
      ],
    );
  }
}
