import 'package:flutter/material.dart';
import 'package:ppodb_2/page/login_register/login_page.dart';
import 'package:ppodb_2/page/login_register/register1_page.dart';

import '../../shared/shared.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        // bottom: true,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/logo.png',
              width: 110,
              height: 32,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/bg1.png',
              width: 260,
              height: 260,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Satu aplikasi untuk semua transaksi',
              style: blackTextStyle.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Semua menjadi praktis mulai dari pembayaran tagihan, transaksi barcode scan, hingga e-commerce.',
              style: dengerTextStyle.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
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
                        fontWeight: FontWeight.w500,
                        color: whiteColor),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
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
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: whiteColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor, width: 3),
                          borderRadius: BorderRadius.circular(30)))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'All Right Reserved @2022',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(color: blackColor, fontSize: 12),
            ),
            SizedBox(
              height: defaultMargin,
            )
          ],
        ),
      ),
    );
  }
}
