import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../main_page/main_page.dart';

class Tokenlistriksuces extends StatelessWidget {
  int harga;
  String daya;
  String nama;
  int biayaadmin;
  int total;
  Tokenlistriksuces(
      {super.key,
      required this.harga,
      required this.biayaadmin,
      required this.daya,
      required this.nama,
      required this.total});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int kode = 123456;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Rincian Pesanan",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: size.height * .02,
          right: size.width * .044,
          left: size.width * .044,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Colors.black38, // Set border color
                      width: 1.0)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * .033, right: size.width * .033),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "#$kode  ",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  )),
                            ),
                            IconButton(
                                onPressed: (() async {
                                  await Clipboard.setData(
                                      ClipboardData(text: "$kode"));
                                }),
                                icon: const Icon(Icons.content_copy))
                          ],
                        ),
                        SizedBox(
                          height: size.height * .015,
                        ),
                        const Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                              text: "20 Desember 2022 (09:18 WIB)",
                              style: TextStyle(
                                color: Color(0xff8C8E93),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        )
                      ],
                    ),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: "Berhasil",
                          style: TextStyle(
                            color: Color(0xff55B220),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Image.asset("assets/image/KodeToken.png"),
            SizedBox(
              height: size.height * .02,
            ),
            Column(children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: "Rincian Pembayaran",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ))),
              ),
              SizedBox(
                height: size.height * .01125,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.black38, // Set border color
                          width: 1.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/PLN.png",
                                  width: size.width * .0888,
                                  height: size.height * .04,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text.rich(
                                      textAlign: TextAlign.left,
                                      TextSpan(
                                          text:
                                              "Token Listrik ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(harga)}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ))),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(TextSpan(
                                    text: "Nama Pelanggan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ))),
                                Text.rich(TextSpan(
                                    text: nama,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(TextSpan(
                                    text: "Tarif/Daya",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ))),
                                Text.rich(TextSpan(
                                    text: daya,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(TextSpan(
                                    text: "Harga",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ))),
                                Text.rich(TextSpan(
                                    text: NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp',
                                            decimalDigits: 0)
                                        .format(harga),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            const Divider(
                              color: Color(0xffD9DCE3),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(TextSpan(
                                    text: "Biaya admin",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ))),
                                Text.rich(TextSpan(
                                    text: NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp',
                                            decimalDigits: 0)
                                        .format(biayaadmin),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xff0d40c614),
                        height: size.height * .0725,
                        width: size.width * 3.28,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * .025,
                              top: size.height * .025,
                              left: size.width * .033,
                              right: size.width * .033),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text.rich(TextSpan(
                                  text: "Total Pembayaran",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ))),
                              Text.rich(TextSpan(
                                  text: NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(total),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ))),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: size.width * .9111,
                    height: size.height * .06,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D40C6),
                          shape: const StadiumBorder()),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MainPage()),
                        );
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: "Kembali ke beranda",
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
