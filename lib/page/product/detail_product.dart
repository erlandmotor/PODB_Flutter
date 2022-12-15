import 'package:flutter/material.dart';
import 'package:ppodb_2/page/product/categoryhome.dart';
import 'package:ppodb_2/page/product/ewallet.dart';
import 'package:ppodb_2/page/widgets/bpjs.dart';
import 'package:ppodb_2/page/widgets/isisaldo.dart';
import 'package:ppodb_2/page/widgets/listrik_pln.dart';

import 'package:ppodb_2/page/widgets/pdams.dart';

import 'package:ppodb_2/page/widgets/tampilantelekom.dart';
import 'package:ppodb_2/page/widgets/token_listrik.dart';

class DetailProduct extends StatefulWidget {
  int code;
  DetailProduct({super.key, required this.code});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String koko = "";

  String status = "";
  TextEditingController bambang = TextEditingController();
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return widget.code == 6 || widget.code == 7
        ? Tampilan_telekom(
            type: widget.code,
          )
        : widget.code == 8
            ? BPJSScreen(
                tipe: widget.code,
              )
            : widget.code == 9
                ? Listrik_Pln_screen(
                    tipe: widget.code,
                  )
                : widget.code == 10
                    ? Token_listrik(
                        tipe: widget.code,
                      )
                    : widget.code == 11
                        ? PDAMS(
                            type: widget.code,
                          )
                        : widget.code == 14 ||
                                widget.code == 15 ||
                                widget.code == 16 ||
                                widget.code == 17
                            ? Topupwallet(type: widget.code)
                            : Scaffold(
                                extendBodyBehindAppBar: true,
                                appBar: AppBar(
                                  leading: const BackButton(
                                    color: Colors.black,
                                  ),
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                ),
                                backgroundColor: Colors.white,
                                body: Padding(
                                  padding: EdgeInsets.only(
                                      right: size.width * .044,
                                      left: size.width * .044),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height * .2125,
                                      ),
                                      SizedBox(
                                        width: size.width * .9138,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/image/amico.png",
                                              height: size.height * .3,
                                            ),
                                            const Text.rich(
                                                textAlign: TextAlign.center,
                                                TextSpan(
                                                    text:
                                                        "Fitur Belum Tersedia!",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 24,
                                                        color: Colors.black))),
                                            SizedBox(
                                              height: size.height * .02,
                                            ),
                                            const Text.rich(
                                                textAlign: TextAlign.center,
                                                TextSpan(
                                                    text:
                                                        "Fitur belum tersedia nih !! Stay tune ya ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                      backgroundColor:
                                                          const Color(
                                                              0xff0D40C6),
                                                      shape:
                                                          const StadiumBorder()),
                                                  onPressed: () {
                                                    Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const CategoryProduct()),
                                                        (route) =>
                                                            route.isFirst);
                                                  },
                                                  child: const Text.rich(
                                                    TextSpan(
                                                      text: "Transaksi Lain",
                                                    ),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16),
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
                                                            builder: (context) =>
                                                                const CategoryProduct()),
                                                        ((route) =>
                                                            route.isFirst));
                                                  },
                                                  child: const Text.rich(
                                                    TextSpan(
                                                      text:
                                                          "Kembali ke beranda",
                                                    ),
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff0D40C6),
                                                        fontWeight:
                                                            FontWeight.w600,
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
