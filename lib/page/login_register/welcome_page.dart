import 'package:flutter/material.dart';
import 'package:ppodb_2/page/login_register/login_page.dart';
import 'package:ppodb_2/page/login_register/register1_page.dart';

import '../../shared/shared.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              right: Size.width * 0.044, left: Size.width * 0.044),
          child: Column(
            children: [
              SizedBox(
                height: Size.height * 0.03,
              ),
              SizedBox(
                width: Size.width * 0.305,
                height: Size.height * 0.04,
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              SizedBox(
                height: Size.height * 0.08,
              ),
              Image.asset(
                'assets/bg1.png',
                width: Size.width * 0.722,
                height: Size.height * 0.325,
              ),
              SizedBox(
                height: Size.height * 0.045,
              ),
              Text(
                'Satu aplikasi untuk semua transaksi',
                style: blackTextStyle.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Size.height * 0.02,
              ),
              Text(
                'Makin banyak keperluan dan kebutuhan, MyCuan solusinya.',
                style: dengerTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Size.height * 0.065,
              ),
              Container(
                height: Size.height * 0.06,
                width: Size.width * 0.911,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Register1Page(),
                      ));
                    },
                    child: Text(
                      'Daftar',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
              ),
              SizedBox(
                height: Size.height * 0.02,
              ),
              Container(
                height: Size.height * 0.06,
                width: Size.width * 0.911,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                    },
                    child: Text(
                      'Masuk',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor, width: 1.5),
                            borderRadius: BorderRadius.circular(30)))),
              ),
              SizedBox(
                height: Size.height * 0.06,
              )
            ],
          ),
        ),
      ),
    );
  }
}
