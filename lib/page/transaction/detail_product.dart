import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/categoryhome.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';
import 'package:ppodb_2/page/widgets/listrik_pln.dart';

import 'package:ppodb_2/page/widgets/paketdata.dart';
import 'package:ppodb_2/page/widgets/pdams.dart';
import 'package:ppodb_2/page/widgets/pulsa.dart';
import 'package:ppodb_2/page/widgets/token_listrik.dart';

class DetailProduct extends StatefulWidget {
  int code;
  DetailProduct({super.key, required this.code});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String koko = "";
  List<Dummypaket> dummy = [
    Dummypaket(
        desc:
            "Langganan Disney+ Hotstar 1 bulan (Kuota Maxstream 3GB). Masa berlaku 30 hari. Jika kuota MAXstream habis pelanggan dapat membeli kuota tambahan. \n\nJika masa aktif paket ini belum berakhir, pembelian paket Disney+ Hotstar selanjutnya akan gagal dan tidak menambah masa aktif paket yang sudah ada.",
        harga: 22000,
        id: 1,
        name: "Paket Disney+ Hotstar (30 Hari)"),
    Dummypaket(
        desc:
            "Kuota 1,5GB untuk akses aplikasi Zoom. Langganan akun Zoom Pro berlaku untuk 3 hari. Akun Zoom Pro bisa melakukan hostmeeting lebih dari 40 menit dengan partisipan hingga 300 orang. Kuota internet Zoom dan akun Zoom Pro berlaku berlaku hingga pukul 23.59 pada hari terakhir masa aktif paket.",
        harga: 25000,
        id: 2,
        name: "Paket Zoom Pro 1.5GB (3 Hari)"),
    Dummypaket(
        desc: "Kuota MaxStream 12GB + Kuota Utama 3GB. Masa Berlaku 30 Hari.",
        harga: 50000,
        id: 3,
        name: "Paket Gigamax Basic 15GB"),
    Dummypaket(
        desc:
            "Kuota utama mulai 3.3 GB hingga 7GB + 1GB OMG! dengan masa berlaku 30 hari. (Kuota internet sesuai zona user, silahkan cek di *363*46#)",
        harga: 54000,
        id: 3,
        name: "Paket Internet Bulanan OMG! 55rb"),
    Dummypaket(
        desc:
            "Kuota Utama mulai 3.3GB hingga 7GB + 1GB OMG!. Bonus berlangganan Vidio. Masa berlaku 30 hari. Kuota internet sesuai zona user, silahkan cek di *363*46#",
        harga: 64000,
        id: 4,
        name: "[New] Paket Internet Bulanan OMG + Vidio 65K")
  ];
  List<ProductDummyModel> fafa = [
    ProductDummyModel(
        id: 1, name: "5.000", diskon: 2000, harga: 6000, status: "diskon"),
    ProductDummyModel(
        id: 2, name: "10.000", diskon: 0, harga: 10200, status: "tersedia"),
    ProductDummyModel(
        id: 3, name: "20.000", diskon: 0, harga: 22000, status: "tersedia"),
    ProductDummyModel(
        id: 4, name: "50.000", diskon: 0, harga: 51000, status: "tersedia"),
    ProductDummyModel(
        id: 5, name: "100.000", diskon: 2000, harga: 100000, status: "diskon"),
    ProductDummyModel(
        id: 5, name: "200.000", diskon: 0, harga: 200000, status: "habis"),
  ];
  String status = "";
  TextEditingController bambang = TextEditingController();
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return widget.code == 1
        ? Pulsa_provider(
            popo: fafa,
            type: widget.code,
          )
        : widget.code == 2
            ? Paketdatas(
                popo: dummy,
                type: widget.code,
              )
            : widget.code == 5
                ? Listrik_Pln_screen(
                    tipe: widget.code,
                  )
                : widget.code == 6
                    ? Token_listrik(
                        tipe: widget.code,
                      )
                    : widget.code == 7
                        ? PDAMS(
                            type: widget.code,
                          )
                        : Scaffold(
                            extendBodyBehindAppBar: true,
                            appBar: AppBar(
                              leading: BackButton(
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
                                  Container(
                                    width: size.width * .9138,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/image/amico.png",
                                          height: size.height * .3,
                                        ),
                                        Text.rich(
                                            textAlign: TextAlign.center,
                                            TextSpan(
                                                text: "Fitur Belum Tersedia!",
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
                                                    "Fitur belum tersedia nih !! Stay tune ya ",
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
                                                  backgroundColor:
                                                      Color(0xff0D40C6),
                                                  shape: StadiumBorder()),
                                              onPressed: () {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CategoryProduct()),
                                                    (route) => route.isFirst);
                                              },
                                              child: Text.rich(
                                                TextSpan(
                                                  text: "Transaksi Lain",
                                                ),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
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
                                                            CategoryProduct()),
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
