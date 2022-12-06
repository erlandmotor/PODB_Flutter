import 'package:flutter/material.dart';
import 'package:ppodb_2/page/transaction/categoryhome.dart';
import 'package:ppodb_2/page/transaction/detail_product.dart';

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
              height: size.height * .2125,
            ),
            Container(
              width: size.width * .9138,
              child: Column(
                children: [
                  Image.asset("assets/image/cuate.png"),
                  Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: "Pembayaran Berhasil!",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.black))),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text:
                              "Tekan Transaksi lagi untuk melakukan \ntransaksi lain atau Kembali ke beranda",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black))),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .1575,
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
                            backgroundColor: Color(0xff0D40C6),
                            shape: StadiumBorder()),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailProduct(
                                        code: 1,
                                      )),
                              (route) => route.isFirst);
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Transaksi lagi",
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
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryProduct()),
                              ((route) => route.isFirst));
                        },
                        child: Text.rich(
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
