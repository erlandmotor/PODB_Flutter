import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/Succesfull_Screen.dart';
import 'package:ppodb_2/page/transaction/failtransaksi.dart';
import 'package:ppodb_2/page/transaction/succes.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../service/providers/product/product_list_provider.dart';
import '../main_page/main_page.dart';

class QRScreen extends StatefulWidget {
  int? tipe;
  int? type;
  String? nomor;
  int total;
  String code;
  Dummymethod data;
  QRScreen(
      {super.key,
      required this.code,
      required this.data,
      required this.total,
      this.tipe,
      this.type,
      this.nomor});

  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * .065625,
              right: size.width * .044,
              left: size.width * .0444),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/image/logoc.png",
                  width: size.width * .275,
                  height: size.height * .03125,
                ),
                Row(
                  children: const [
                    Text.rich(
                      TextSpan(
                        text: "Bayar dalam",
                      ),
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    SlideCountdown(
                      decoration: BoxDecoration(color: Colors.transparent),
                      duration: Duration(hours: 12),
                      slideDirection: SlideDirection.down,
                      separator: ':',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0D40C6)),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height * .4675,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffE7ECF9),
              ),
              width: size.width * .722222222222,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * .0555, right: size.width * .0555),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * .025,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          widget.data.gambar,
                          height: size.height * .03,
                          width: size.width * .0666,
                        ),
                        Text.rich(
                          TextSpan(
                            text: widget.data.name,
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    QrImage(
                      backgroundColor: Colors.white,
                      data:
                          "mycuan ${widget.data.name}${widget.code}${widget.total}",
                      size: 200,
                      version: QrVersions.auto,
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: "Total",
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          width: size.width * .04166,
                        ),
                        Text.rich(
                          TextSpan(
                            text: NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp',
                                    decimalDigits: 0)
                                .format(widget.total),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                        text: "No. ID ${widget.code}",
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    SizedBox(
                      height: size.height * .025,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Cara bayar\n",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "\n1. Unduh barcode diatas",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "\n2. Buka aplikasi",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " e-wallet ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "anda",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "\n3. Pindai atau masukkan",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: " Kode QR ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "anda",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
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
                    onPressed: () async {
                      if (widget.tipe != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SuccesPages(
                                      type: widget.tipe!,
                                    )),
                            (route) => false);
                      } else {
                        await Provider.of<ProductListProviders>(context,
                                listen: false)
                            .addnominal(widget.total);
                        String status = Provider.of<ProductListProviders>(
                                context,
                                listen: false)
                            .statatusballance;
                        if (status == "success") {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccesPage()),
                              (route) => false);
                        } else {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Failtransaction()),
                              (route) => false);
                        }
                      }
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Masuk ke aplikasi",
                      ),
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                )),
            SizedBox(
              height: size.height * .02,
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
                            text: "Kembali ke merchant",
                          ),
                          style: TextStyle(
                              color: Color(0xff0D40C6),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ))),
          ]),
        ),
      ),
    );
  }
}
