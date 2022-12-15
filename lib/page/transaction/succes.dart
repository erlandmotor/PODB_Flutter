import 'package:flutter/material.dart';
import 'package:ppodb_2/page/main_page/main_page.dart';
import 'package:ppodb_2/page/product/categoryhome.dart';
import 'package:ppodb_2/page/product/detail_product.dart';

class SuccesPages extends StatefulWidget {
  int type;
  SuccesPages({super.key, required this.type});

  @override
  State<SuccesPages> createState() => _SuccesPagesState();
}

class _SuccesPagesState extends State<SuccesPages> {
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
              height: size.height * .225,
            ),
            SizedBox(
              width: size.width * .9138,
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/succes.png",
                    width: size.width * .667,
                    height: size.height * .3,
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  const Text.rich(
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
                          text: widget.type == 1
                              ? "TSebentar lagi pulsa kamu otomatis masuk!\nSambil nunggu, yuk transaksi tagihan\nlainnya."
                              : widget.type == 2
                                  ? "Sebentar lagi paket kamu otomatis aktif!\nSambil nunggu, yuk transaksi tagihan\nlainnya."
                                  : widget.type == 4
                                      ? "Yeay... tagihan BPJS kamu sudah terbayar!\nYuk transaksi tagihan lainnya."
                                      : widget.type == 5
                                          ? "Yeay... tagihan Listrik kamu sudah terbayar!\nYuk transaksi tagihan lainnya."
                                          : widget.type == 7
                                              ? "Yeay... tagihan PDAM kamu sudah\nterbayar! Yuk transaksi tagihan lainnya."
                                              : "Yeay... uangnya udah kekirim!\nYuk transaksi lagi.",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black))),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .1175,
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
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailProduct(
                                        code: widget.type,
                                      )),
                              (route) => route.isCurrent);
                        },
                        child: const Text.rich(
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
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
