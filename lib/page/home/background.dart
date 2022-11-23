
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class Background extends StatelessWidget {
  const Background({super.key,required this.child});
  final  Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(    
                    width: double.infinity,
                     height: 271,        
                  decoration: BoxDecoration(              
                    color: primaryColor,
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(40),bottomLeft: Radius.circular(40))              
                  ),
                  
                ),
                child
      ],
    );
  }
}