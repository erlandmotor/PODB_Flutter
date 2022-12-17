import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class BackgroundFaq extends StatelessWidget {
  const BackgroundFaq({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
   return Scaffold(
    resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
         automaticallyImplyLeading: false, 
        flexibleSpace: Image(
          image: AssetImage("assets/image/FAQ.png"),
          fit: BoxFit.cover,
        ),
        title: Text(
          "FAQ",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
     body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: heightt ,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/FAQ.png"), fit: BoxFit.cover),
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: heightt*205/800),
            child: Container(
              height: heightt*595/800,
              
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                    color: Colors.white,
              ),
            ),
          ),
          child
        ],
      ),
   );
  }
}
