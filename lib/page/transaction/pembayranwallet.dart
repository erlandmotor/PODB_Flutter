import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/page/transaction/succes.dart';

class PembayaranWallet extends StatefulWidget {
  int harga;
  String pesans;
  String nomor;
  int admin;
  int type;
  PembayaranWallet(
      {super.key,
      required this.harga,
      required this.pesans,
      required this.nomor,
      required this.admin,
      required this.type});

  @override
  State<PembayaranWallet> createState() => _PembayaranWalletState();
}

class _PembayaranWalletState extends State<PembayaranWallet> {
  TextEditingController pesan = TextEditingController();
  late int total;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    pesan.text = widget.pesans;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Konfirmasi",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: size.width * 1,
              height: size.height * .095,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * .044,
                    top: size.height * .02,
                    bottom: size.height * .02),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: widget.nomor,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 16,
                          )),
                      TextSpan(
                        text: widget.type == 10
                            ? "\nShopeePay"
                            : widget.type == 11
                                ? "\nDana"
                                : widget.type == 12
                                    ? "\nGopay"
                                    : widget.type == 13
                                        ? "\nlinkaja"
                                        : "\nOvo",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
                color: Colors.white,
                width: size.width * 1,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .044,
                      right: size.width * .044,
                      top: size.height * .02,
                      bottom: size.height * .02),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                              text: "Pesan",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        controller: pesan,
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              color: Colors.white,
              width: size.width * 1,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .044,
                      right: size.width * .044,
                      top: size.height * .02,
                      bottom: size.height * .02),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "Detail Transaksi",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          )),
                      SizedBox(
                        height: size.height * .01,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text.rich(TextSpan(
                                          text: "Nominal",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ))),
                                      Text.rich(TextSpan(
                                          text: NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: 'Rp',
                                                  decimalDigits: 0)
                                              .format(widget.harga),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ))),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xffD9DCE3),
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: size.height * .02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              .format(widget.admin),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ))),
                                    ],
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                            .format(total =
                                                widget.harga + widget.admin),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              color: Colors.white,
              width: size.width * 1,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .044,
                      top: size.height * .02,
                      bottom: size.height * .02),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Metode Pembayaran",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/image/logo.png",
                          width: size.width * .1,
                          height: size.height * .045,
                        ),
                        SizedBox(
                          width: size.width * .066,
                        ),
                        Column(
                          children: [
                            Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                    text: "MyCuan saldo",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ))),
                            SizedBox(
                              height: size.height * .01,
                            ),
                            Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                    text: "Saldo: Rp 800.000",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ))),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ])),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SuccesPages(type: widget.type)));
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Lanjutkan",
                      ),
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
