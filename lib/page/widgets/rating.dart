import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ppodb_2/page/widgets/boxIconMenu.dart';
import 'package:ppodb_2/page/widgets/button_alert.dart';
import 'package:ppodb_2/page/widgets/button_confrim.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';



class AlertRating extends StatelessWidget {
 // final String labelButton;
  final Color colorButton;
  final VoidCallback onClicked;
//  final String labelButton2;
  final Color titleColor;
  final String contentApproval;
  final String gambar;
  const AlertRating({
    Key? key,
  //  required this.labelButton,
    required this.colorButton,
    required this.onClicked,
    required this.titleColor,
    required this.contentApproval,
    required this.gambar,
   // required this.labelButton2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: heightt*326/800,
        width: widthh*320/360,
        child: Column(
          children: <Widget> [
            // Padding(
            //   padding: const EdgeInsets.only(top: 15),
            //   child: Text(
            //     title,
            //     style: TextStyle(
            //       fontSize: 18,
            //       color: titleColor,
            //       fontWeight: FontWeight.w700
            //     ),
            //   ),
            // ),
               SizedBox(height:heightt*47/800),
            Container(
              height: heightt*160/800,
              width: widthh*150/360,
              child: Image.asset(gambar),
            ),
            Padding(
              padding:  EdgeInsets.only(top:heightt* 5/800, bottom:heightt* 5/800, left:widthh* 10/360, right: widthh* 10/360),
              child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: widthh* 10/360, vertical: heightt* 10/800),
                  child: Row(
                    children: <Widget> [
                      Expanded(
                        child: Text(
                          contentApproval,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: widthh*35/360,right: widthh*16/360),
              child: Container(
                width: widthh*230/360,
                height: heightt*40/800,
                child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal:widthh* 4/360),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
              ),
            )
            //  Container(
            //    width: double.infinity,
            //    height:heightt* 20/800,
            //    child: GridView.builder(
            //      physics: NeverScrollableScrollPhysics(),
            //      padding: EdgeInsets.only(top:heightt* 10/800,),
            //      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //      crossAxisCount: 5,
            //      // childAspectRatio: 5 ,
            //      crossAxisSpacing: 8,
            //       mainAxisSpacing: 16,
            //    ),
            //    itemCount: rating.length,
            //    itemBuilder: (BuildContext context, index) {
            //      return GestureDetector(
            //        onTap: () {
            //          if(rating[index] == 0){
            //           // Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
            //          }
            //          if(rating[index] == 1){
            //          //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
            //          }
            //          if(rating[index] == 2){
            //          //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
            //          }
            //          if(rating[index] == 3){
            //          //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
            //          } 
            //          if(rating[index] == 4){
            //          //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
            //          }                              
            //        },
            //        child: Column(
            //          children: [
            //            if(rating[index]==0)...[
            //              BoxIconModul(icon: rating[index]),                                         
            //            ],
            //            if(rating[index]==1)...[
            //              BoxIconModul(icon: rating[index]),                                         
            //            ],
            //            if(rating[index]==2)...[
            //              BoxIconModul(icon: rating[index]),                                         
            //            ],
            //            if(rating[index]==3)...[
            //              BoxIconModul(icon: rating[index]),                                         
            //            ], 
            //            if(rating[index]==4)...[
            //              BoxIconModul(icon: rating[index]),                                         
            //            ],                                
            //          ],
            //        ),
            //      );                              
            //    },
               
            //    ),
            //  ),
            // Padding(
            //   padding:  EdgeInsets.symmetric(horizontal: widthh* 10/360, vertical: heightt* 10/800),
            //   child: Row(
            //     children: <Widget> [
            //       Expanded(
            //         child: ButtonAlert(
            //           label: labelButton,
            //           colorisi: primaryColor,                    
            //           onClicked: () {
                       
            //           }
            //         )
            //       ),
            //        SizedBox(width:widthh* 10/360),
            //       Expanded(
            //         child: ButtonConfrim(
            //           label: labelButton2,
            //           colorisi: primaryColor,
            //           onClicked: onClicked
            //         )
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}