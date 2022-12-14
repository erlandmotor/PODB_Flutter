import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/widgets/qrCode.dart';

class Isiformsaldo extends StatefulWidget {
  Dummymethod metod;
  Isiformsaldo({super.key, required this.metod});

  @override
  State<Isiformsaldo> createState() => _IsiformsaldoState();
}

class _IsiformsaldoState extends State<Isiformsaldo> {
  TextEditingController jumlah = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Isi Saldo",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * .02125,
            left: size.width * .0444,
            right: size.width * .0444),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                      text: "Masukkan Jumlah (Rp)",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ))),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.phone,
              controller: jumlah,
              style: const TextStyle(
                  color: Color(0xff0D40C6),
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
              decoration: jumlah.text == ""
                  ? InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                          color: Color(0xff0D40C6),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                      fillColor: Colors.blue,
                      prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: size.height * .015,
                              bottom: size.height * .015),
                          child: const Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Rp",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: Color(0xff0D40C6),
                                  )))),
                    )
                  : InputDecoration(
                      hintText: "0",
                      hintStyle: const TextStyle(
                          color: Color(0xff0D40C6),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                      fillColor: Colors.blue,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              jumlah.clear();
                            });
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Color(0xff0D40C6),
                          )),
                      prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: size.height * .015,
                              bottom: size.height * .015),
                          child: const Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Rp",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: Color(0xff0D40C6),
                                  )))),
                    ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: jumlah.text == ""
                            ? "Minimal nominal isi saldo di ${widget.metod.name} adalah Rp10.000 "
                            : int.parse(jumlah.text) <= 10000
                                ? "Minimal pengisian saldo adalah 10.000 !!"
                                : "",
                        style: TextStyle(
                          color: jumlah.text == ""
                              ? Colors.black
                              : int.parse(jumlah.text) <= 10000
                                  ? Colors.red
                                  : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        )))),
            SizedBox(
              height: size.height * .02,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: "Metode Pembayaran",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )))),
            SizedBox(
              height: size.height * .01,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .02, bottom: size.height * .02, left: 0),
              child: ListTile(
                leading: Image.asset(
                  widget.metod.gambar,
                  width: 24,
                  height: 24,
                ),
                trailing: const Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                title: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: widget.metod.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ))),
              ),
            ),
            const Divider(),
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              height: size.height * .08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff0d40c614),
              ),
              width: size.width * .9111,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * .02,
                    bottom: size.height * .02,
                    left: size.width * .033,
                    right: size.width * .033),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text.rich(TextSpan(
                        text: "Total Pembayaran",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ))),
                    Text.rich(TextSpan(
                        text: jumlah.text != ""
                            ? NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp',
                                    decimalDigits: 0)
                                .format(int.parse(jumlah.text))
                            : NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp',
                                    decimalDigits: 0)
                                .format(0),
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .26375,
            ),
            jumlah.text != "" && int.parse(jumlah.text) > 10000
                ? Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: size.width * .9111,
                      height: size.height * .06,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0D40C6),
                            shape: const StadiumBorder()),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QRScreen(
                                    code:
                                        "${Random().nextInt(899999999) + 100000000}",
                                    data: widget.metod,
                                    total: int.parse(jumlah.text))),
                          );
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: "Bayar Sekarang",
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ))
                : Container()
          ],
        ),
      ),
    );
  }
}
