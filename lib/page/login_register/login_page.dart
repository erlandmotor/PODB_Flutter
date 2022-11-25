import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ppodb_2/shared/shared.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    "Masuk",
                    style: dengerTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/bg_login.png',
                width: 290,
                height: 230,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "E-mail/No.Hp",
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
                hintText: "Kata Sandi",
                labelText: "Kata Sandi",
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lupa kata sandi?",
                style: primaryTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Masuk',
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
                    "Belum punya akun?",
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Daftar",
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
