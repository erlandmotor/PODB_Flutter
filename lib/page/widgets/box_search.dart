
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class Boxsearch extends StatelessWidget {
  const Boxsearch({super.key,required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
   double widthh = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: widthh*16/360,right: widthh*16/360,),
      child: Card(        
        elevation: 5,
       // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: const BorderSide(
            width: 0.5,
            color: colorSaldo
          )
        ),
        
        child: Padding(
          padding: EdgeInsets.only(top: widthh*5/328,bottom: widthh*5/328,),
          child: child,
          
        ),
      ),
    );
  }
}