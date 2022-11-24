
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class Boxkecil extends StatelessWidget {
  const Boxkecil({super.key,required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: 510,),
      child: Padding(
        padding: EdgeInsets.only(left: 30,right: 30,top: 70),
        child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(
              width: 0.5,
              color: primaryColor
            )
          ),
          
          child: Padding(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: child,
            
          ),
        ),
      ),
    );
  }
}