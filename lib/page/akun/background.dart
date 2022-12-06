import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class BackgroundAkun extends StatelessWidget {
  const BackgroundAkun({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: heightt * 260 / 800,
          decoration: BoxDecoration(
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
