import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ppodb_2/page/login_register/register1_page.dart';

import '../../shared/shared.dart';

class EmailBoarding extends StatelessWidget {
  const EmailBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(
            right: Size.width * 63/360, left: Size.width * 56/360),
        child: Column(
          children: [
            
           
            SizedBox(
              height: Size.height * 168/800,
            ),
            Image.asset(
              "assets/icon/amico2.png",
              width: Size.width * 200/360,
              height: Size.height * 200/800,
            ),
            SizedBox(
              height: Size.height * 16/800,
            ),
            Text(
              'Periksa Email Kamu',
              style: blackTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Size.height * 8/800,
            ),
            Text(
              'kami telah mengirimkan instruksi pemulihan kata sandi ke email Anda',
              style: dengerTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Size.height * 100/800,
            ),
            SizedBox(
              height: Size.height * 0.06,
              width: Size.width * 0.911,
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Register1Page(),
                    // ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'Buka Email',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: whiteColor),
                  )),
            ),
            SizedBox(
              height: Size.height * 0.02,
            ),
            SizedBox(
              height: Size.height * 0.06,
              width: Size.width * 0.911,
              child: ElevatedButton(                
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => LoginPage(),
                    // ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          // side: BorderSide(color: primaryColor, width: 1.5),
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'Lewati',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: primaryColor),
                  )),
            ),
            SizedBox(
              height: Size.height * 0.06,
            )
          ],
        ),
      ),
    );
  }
}
