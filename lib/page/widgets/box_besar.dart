
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class Boxbesar extends StatelessWidget {
  const Boxbesar({super.key,required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
     // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: const BorderSide(
          width: 0.5,
          color: sideColorBox
        )
      ),
      
      child: child
        
      
    );
  }
}