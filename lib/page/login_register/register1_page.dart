import 'package:flutter/material.dart';
import 'package:ppodb_2/page/login_register/register2_page.dart';

import '../../shared/shared.dart';

class Register1Page extends StatefulWidget {
  const Register1Page({super.key});

  @override
  State<Register1Page> createState() => _Register1PageState();
}

class _Register1PageState extends State<Register1Page> {
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
                "Ayo gabung ke Mycuan!",
                style: blackTextStyle.copyWith(fontSize: 22),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Nama Lengkap",
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
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Alamat Email",
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
                hintText: "emailkamu@gmail.com",
                labelText: "emailkamu@gmail.com",
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nomor Handphone",
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
                hintText: "Nomor Aktif Kamu",
                labelText: "Nomor Aktif Kamu",
              )),
              SizedBox(
                height: 5,
              ),
              Text(
                "Isi dengan nomor kamu yang masih aktif ya!",
                style: primaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Register2Page(),
                      ));
                    },
                    child: Text(
                      'Lanjut',
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
