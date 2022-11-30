import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';

class Paketdata extends StatefulWidget {
  const Paketdata({super.key});

  @override
  State<Paketdata> createState() => _PaketdataState();
}

class _PaketdataState extends State<Paketdata> {
  String koko = "";
  List<Dummypaket> fafa = [
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
  String status = "";
  TextEditingController bambang = TextEditingController();
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Paket Data",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * .044,
          right: size.width * .044,
        ),
        child: Stack(children: [
          Column(children: [
            SizedBox(
              height: size.height * .0575,
            ),
            Container(
              color: Colors.white,
              width: size.width * .93,
              height: size.height * .08,
            )
          ]),
          Column(
            children: [
              SizedBox(
                height: size.height * .016,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: "Nomor Handphone",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ))),
              ),
              SizedBox(
                height: size.height * .012,
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  TextField(
                    decoration: koko == ""
                        ? InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "0853xxxxxxxx")
                        : InputDecoration(
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: koko.length > 0 && koko.length < 4 ||
                                        koko.length > 13
                                    ? Icon(Icons.phone_android)
                                    : koko[2] == "5" && koko[3] == "2" ||
                                            koko[2] == "5" && koko[3] == "3" ||
                                            koko[2] == "5" && koko[3] == "1" ||
                                            koko[2] == "5" && koko[3] == "7" ||
                                            koko[2] == "5" && koko[3] == "6"
                                        ? Image.asset(
                                            "assets/image/Telkomsel old.png",
                                            width: size.width * .024,
                                            height: size.height * .024,
                                          )
                                        : koko[2] == "1" && koko[3] == "1" ||
                                                koko[2] == "1" &&
                                                    koko[3] == "2" ||
                                                koko[2] == "1" &&
                                                    koko[3] == "3" ||
                                                koko[2] == "2" &&
                                                    koko[3] == "1" ||
                                                koko[2] == "2" && koko[3] == "2"
                                            ? Image.asset(
                                                "assets/image/Simpati.png",
                                                width: size.width * .024,
                                                height: size.height * .024,
                                              )
                                            : koko[2] == "1" && koko[3] == "7" ||
                                                    koko[2] == "1" &&
                                                        koko[3] == "8" ||
                                                    koko[2] == "1" &&
                                                        koko[3] == "9" ||
                                                    koko[2] == "5" &&
                                                        koko[3] == "9" ||
                                                    koko[2] == "7" &&
                                                        koko[3] == "7" ||
                                                    koko[2] == "7" &&
                                                        koko[3] == "8"
                                                ? Image.asset(
                                                    "assets/image/XL.png",
                                                    width: size.width * .024,
                                                    height: size.height * .024,
                                                  )
                                                : koko[2] == "3" && koko[3] == "2" ||
                                                        koko[2] == "3" &&
                                                            koko[3] == "3" ||
                                                        koko[2] == "3" &&
                                                            koko[3] == "8"
                                                    ? Image.asset(
                                                        "assets/image/Axis_logo_2015.png",
                                                        width:
                                                            size.width * .024,
                                                        height:
                                                            size.height * .024,
                                                      )
                                                    : koko[2] == "9" && koko[3] == "6" ||
                                                            koko[2] == "9" &&
                                                                koko[3] ==
                                                                    "5" ||
                                                            koko[2] == "9" &&
                                                                koko[3] ==
                                                                    "7" ||
                                                            koko[2] == "9" &&
                                                                koko[3] ==
                                                                    "8" ||
                                                            koko[2] == "9" &&
                                                                koko[3] == "9"
                                                        ? Image.asset(
                                                            "assets/image/3-brand.png",
                                                            width: size.width *
                                                                .024,
                                                            height:
                                                                size.height *
                                                                    .024,
                                                          )
                                                        : koko[2] == "8" && koko[3] == "8" ||
                                                                koko[2] == "8" &&
                                                                    koko[3] ==
                                                                        "1" ||
                                                                koko[2] == "8" &&
                                                                    koko[3] ==
                                                                        "2" ||
                                                                koko[2] == "8" &&
                                                                    koko[3] ==
                                                                        "3" ||
                                                                koko[2] == "8" &&
                                                                    koko[3] ==
                                                                        "4" ||
                                                                koko[2] == "8" &&
                                                                    koko[3] == "5" ||
                                                                koko[2] == "8" && koko[3] == "6" ||
                                                                koko[2] == "8" && koko[3] == "7" ||
                                                                koko[2] == "8" && koko[3] == "9"
                                                            ? Image.asset(
                                                                "assets/image/smartfren.png",
                                                                width:
                                                                    size.width *
                                                                        .024,
                                                                height:
                                                                    size.height *
                                                                        .024,
                                                              )
                                                            : Icon(Icons.phone_android)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    koko = "";
                                    bambang.clear();
                                  });
                                },
                                icon: Icon(Icons.cancel)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                    onChanged: ((value) {
                      setState(() {
                        koko = value;
                        status = "";
                      });
                    }),
                    controller: bambang,
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .005,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: koko == ""
                            ? "Silahkan Masukkan Nomor Handphone Anda"
                            : koko.length < 10
                                ? "Silahkan Masukkan Nomor Yang Benar"
                                : koko.length > 13
                                    ? "Silahkan Masukkan Nomor Yang Valid"
                                    : koko[0] != "0" || koko[1] != "8"
                                        ? "Hanya bisa melakukan transaksi untuk provider Indonesia"
                                        : koko[2] == "5" && koko[3] == "2" ||
                                                koko[2] == "5" &&
                                                    koko[3] == "3" ||
                                                koko[2] == "5" && koko[3] == "1"
                                            ? "Kartu As"
                                            : koko[2] == "1" && koko[3] == "1" ||
                                                    koko[2] == "1" &&
                                                        koko[3] == "2" ||
                                                    koko[2] == "1" &&
                                                        koko[3] == "3" ||
                                                    koko[2] == "2" &&
                                                        koko[3] == "1" ||
                                                    koko[2] == "2" &&
                                                        koko[3] == "2"
                                                ? "Kartu Simpati"
                                                : koko[2] == "1" && koko[3] == "7" ||
                                                        koko[2] == "1" &&
                                                            koko[3] == "8" ||
                                                        koko[2] == "1" &&
                                                            koko[3] == "9" ||
                                                        koko[2] == "5" &&
                                                            koko[3] == "9" ||
                                                        koko[2] == "7" &&
                                                            koko[3] == "7" ||
                                                        koko[2] == "7" &&
                                                            koko[3] == "8"
                                                    ? "XL"
                                                    : koko[2] == "3" && koko[3] == "2" ||
                                                            koko[2] == "3" &&
                                                                koko[3] ==
                                                                    "3" ||
                                                            koko[2] == "3" &&
                                                                koko[3] == "8"
                                                        ? "AXIS"
                                                        : koko[2] == "5" && koko[3] == "7" ||
                                                                koko[2] == "5" &&
                                                                    koko[3] ==
                                                                        "6"
                                                            ? "Kartu As"
                                                            : koko[2] == "9" && koko[3] == "6" ||
                                                                    koko[2] == "9" &&
                                                                        koko[3] ==
                                                                            "5" ||
                                                                    koko[2] == "9" &&
                                                                        koko[3] ==
                                                                            "7" ||
                                                                    koko[2] == "9" &&
                                                                        koko[3] ==
                                                                            "8" ||
                                                                    koko[2] == "9" &&
                                                                        koko[3] ==
                                                                            "9"
                                                                ? "Tri"
                                                                : koko[2] == "8" && koko[3] == "8" ||
                                                                        koko[2] == "8" &&
                                                                            koko[3] == "1" ||
                                                                        koko[2] == "8" && koko[3] == "2" ||
                                                                        koko[2] == "8" && koko[3] == "3" ||
                                                                        koko[2] == "8" && koko[3] == "4" ||
                                                                        koko[2] == "8" && koko[3] == "5" ||
                                                                        koko[2] == "8" && koko[3] == "6" ||
                                                                        koko[2] == "8" && koko[3] == "7" ||
                                                                        koko[2] == "8" && koko[3] == "9"
                                                                    ? "Smartfren"
                                                                    : "Nomor yang anda masukkan tidak terdaftar di provider Indonesia",
                        style: koko == ""
                            ? TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              )
                            : koko.length < 10 || koko.length > 13 || koko[0] != "0" || koko[1] != "8"
                                ? TextStyle(fontWeight: FontWeight.w800, color: Colors.red, fontSize: 12)
                                : TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5D61),
                                    fontSize: 12,
                                  ))),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Align(
                alignment: koko.length < 10 || koko.length > 13 || koko == ""
                    ? Alignment.center
                    : Alignment.topLeft,
                child: koko.length < 10 && koko.length > 0 || koko.length > 13
                    ? CircularProgressIndicator()
                    : koko == "" || koko[0] != "0" || koko[1] != "8"
                        ? Container()
                        : Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "List Paket",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ))),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Expanded(
                  child: koko.length < 10 ||
                          koko.length > 13 ||
                          koko == "" ||
                          koko[0] != "0" ||
                          koko[1] != "8"
                      ? Container()
                      : SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              for (var i = 0; i < fafa.length; i++)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      status = fafa[i].name;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: status == fafa[i].name
                                            ? Border.all(
                                                color: Colors
                                                    .blue, // Set border color
                                                width: 1)
                                            : Border.all(
                                                color: Colors
                                                    .white, // Set border color
                                                width: 1)),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: size.height * .03,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                              right: size.width * .32777,
                                            ),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text.rich(
                                                  TextSpan(text: fafa[i].name),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16),
                                                  textAlign: TextAlign.left,
                                                ))),
                                        SizedBox(
                                          height: size.height * .01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: size.width * .5833,
                                              color: Colors.white,
                                              child: Text.rich(
                                                TextSpan(text: fafa[i].desc),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: size.width * .0444),
                                              child: Text.rich(
                                                TextSpan(
                                                    text:
                                                        "${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(fafa[i].harga)}"),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff0D40C6)),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: size.height * .02,
                                        ),
                                        Divider(
                                          color: Color(0xffD9DCE3),
                                          thickness: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        )),
              SizedBox(
                height: size.height * .1,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .044,
                right: size.width * .044,
                bottom: size.height * .025),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: size.width * .9111,
                  height: size.height * .06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(status != "" &&
                                koko.length > 9 &&
                                koko.length < 13 &&
                                koko[0] == "0" &&
                                koko[1] == "8"
                            ? 0xff0D40C6
                            : 0xffD9DCE3),
                        shape: StadiumBorder()),
                    onPressed: () {
                      if (status != "" &&
                          koko.length > 9 &&
                          koko.length < 13 &&
                          koko[0] == "0" &&
                          koko[1] == "8") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pembayaranscreen()),
                        );
                      }
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Lanjutkan",
                      ),
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
