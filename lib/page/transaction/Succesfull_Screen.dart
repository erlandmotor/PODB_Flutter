import 'package:flutter/material.dart';
import 'package:ppodb_2/page/product/categoryhome.dart';
// ignore: unused_import
import 'package:ppodb_2/page/product/detail_product.dart';

class SuccesPage extends StatefulWidget {
  const SuccesPage({super.key});

  @override
  State<SuccesPage> createState() => _SuccesPageState();
}

class _SuccesPageState extends State<SuccesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(right: size.width * .044, left: size.width * .044),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .2225,
            ),
            SizedBox(
              width: size.width * .9138,
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/bro.png",
                    width: size.width * .6667,
                    height: size.height * .3,
                  ),
                  const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: "Isi Saldo Berhasil!",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.black))),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text:
                              "Yeay... saldo kamu udah terisi! yuk ulangi\ntransaksi.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff5C5D61)))),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .145,
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: size.width * .016,
                  right: size.width * .016,
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: size.width * 3.28,
                      height: size.height * .07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0D40C6),
                            shape: const StadiumBorder()),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryProduct()),
                          );
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: "Ulangi Transaksi",
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ))),
            SizedBox(
              height: size.height * .03625,
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: size.width * .016,
                  right: size.width * .016,
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: size.width * 3.28,
                      height: size.height * .07,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryProduct()),
                          );
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: "Kembali ke beranda",
                          ),
                          style: TextStyle(
                              color: Color(0xff0D40C6),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
