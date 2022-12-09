
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class BoxDetailRiwayat extends StatelessWidget {
  const BoxDetailRiwayat({super.key,required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
     double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    return Card(
      elevation: 1,
     // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: const BorderSide(
         color:
          Colors.black38, // Set border color
          width: 1
        )
      ),
      
      child: child
        
      
    );
  }
}