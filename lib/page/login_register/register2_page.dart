import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({super.key});

  @override
  State<Register2Page> createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Daftar",
                    style: dengerTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Buat kata sandi kamu!",
                style: blackTextStyle.copyWith(fontSize: 22),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Kata Sandi",
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Sstt! jangan disebarin yah!",
                labelText: "Sstt! jangan disebarin yah!",
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Konfirmasi Kata Sandi",
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Ulangi kata sandi kamu",
                labelText: "Ulangi kata sandi kamu",
              )),
              SizedBox(
                height: 200,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {},
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun?",
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Masuk",
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
