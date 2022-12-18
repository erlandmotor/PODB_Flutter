import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../models/dummymodel.dart';
import '../transaction/pembayaran.dart';

class Token_listrik extends StatefulWidget {
  int tipe;
  Token_listrik({super.key, required this.tipe});

  @override
  State<Token_listrik> createState() => _Token_listrikState();
}

class _Token_listrikState extends State<Token_listrik> {
  TextEditingController bambang = TextEditingController();
  List<ProductDummyModel> popo = [
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
        id: 6, name: "200.000", diskon: 0, harga: 200000, status: "habis"),
  ];

  List<PelangganToken> fafa = [
    PelangganToken(
        id: 1,
        daya: "R1 /000001300VA",
        name: "Malika",
        nomorpelanggan: 522540682236),
    PelangganToken(
        id: 2,
        daya: "R1 /000001300VA",
        name: "Arya Fajar",
        nomorpelanggan: 123456789101)
  ];
  late PelangganToken token;
  int status = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Token Listrik PLN",
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
                child: const Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: "Nomor Meter/ID Pelanggan",
                        style: TextStyle(
                          color: Colors.black,
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: bambang.text.isEmpty
                        ? InputDecoration(
                            prefixIcon: const Icon(Icons.offline_bolt),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "0853xxxxxxxx")
                        : InputDecoration(
                            prefixIcon: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.offline_bolt)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    bambang.clear();
                                  });
                                },
                                icon: const Icon(Icons.cancel)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
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
                        text: bambang.text.isEmpty
                            ? "Silahkan masukkan nomor pelanggan anda"
                            : bambang.text.length < 10 ||
                                    bambang.text.length > 13
                                ? "Silahkan masukkan nomor yang valid"
                                : "Silahkan lanjutkan ke pembayaran",
                        style: bambang.text.isEmpty
                            ? const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              )
                            : bambang.text.length < 10 ||
                                    bambang.text.length > 13
                                ? const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.red,
                                    fontSize: 12)
                                : const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5D61),
                                    fontSize: 12,
                                  ))),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              bambang.text.length > 9 && bambang.text.length < 14
                  ? Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: size.width * .0444,
                            mainAxisSpacing: size.height * .02,
                            mainAxisExtent: 100),
                        itemBuilder: (context, index) {
                          return RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (popo[index].status != "habis") {
                                    if (status != popo[index].name) {
                                      status = popo[index].id;
                                    } else {
                                      status = 0;
                                    }
                                  }
                                });
                              },
                              child: Container(
                                  height: size.height * .135,
                                  width: size.width * .4333,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: popo[index].id != status
                                        ? Border.all(
                                            color: Colors
                                                .black38, // Set border color
                                            width: 1.0)
                                        : Border.all(
                                            color:
                                                Colors.blue, // Set border color
                                            width: 3.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: [
                                    Container(
                                      height: size.height * .075,
                                      width: size.width * .433,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              popo[index].status == "diskon"
                                                  ? "assets/image/Promo_Rounded.png"
                                                  : popo[index].status ==
                                                          "tersedia"
                                                      ? "assets/image/Normal_Rounded.png"
                                                      : "assets/image/Habis_Rounded v2.png",
                                            ),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * .03636,
                                          top: size.height * .01,
                                          bottom: size.height * .01,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text.rich(
                                              textAlign: TextAlign.left,
                                              TextSpan(
                                                  text: popo[index].name,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      color: Colors.white))),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .015,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * .0333,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text.rich(TextSpan(
                                              text:
                                                  "Bayar: ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(popo[index].harga - popo[index].diskon)}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ))),
                                        )),
                                  ])));
                        },
                        itemCount: popo.length,
                      ),
                    )
                  : Container(
                      width: size.width * 9111,
                      height: size.height * .11,
                      color: const Color(0xff0d40c614),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * .0388,
                                top: size.height * .0425,
                                bottom: size.height * .0425),
                            child: SizedBox(
                                height: size.height * .025,
                                width: size.width * .0555,
                                child: const Icon(
                                  Icons.info,
                                  color: Color(0xff0D40C6),
                                )),
                          ),
                          SizedBox(width: size.width * .0777),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * .015,
                                  bottom: size.height * .015,
                                  right: size.width * .033),
                              child: RichText(
                                text: const TextSpan(
                                    text:
                                        "Transaksi Produk Listrik PLN yang dilakukan\npukul 23:40-OO.20 WIB akan",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                    children: [
                                      TextSpan(
                                          text:
                                              "mulai diproses\npada pukul 00.20 WIB",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: "sesuai kebijakan pihak\nPLN.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12))
                                    ]),
                              )),
                        ],
                      ),
                    )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: size.width * .044,
                  right: size.width * .044,
                  bottom: size.height * .1),
              child: bambang.text.length > 9 &&
                      bambang.text.length < 14 &&
                      status != ""
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
                            for (int i = 0; i < fafa.length; i++) {
                              if (fafa[i].nomorpelanggan ==
                                  int.parse(bambang.text)) {
                                token = fafa[i];
                              }
                            }
                            var contain = fafa.indexWhere((element) =>
                                element.nomorpelanggan ==
                                int.parse(bambang.text));
                            if (contain >= 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pembayaranscreen(
                                          terima: KirimanKonfirm(
                                              tipe: widget.tipe,
                                              biayaadmin: 2500,
                                              nomor: int.parse(bambang.text)),
                                          token: token,
                                          harga: popo[status].harga -
                                              popo[status].diskon,
                                        )),
                              );
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/image/Penasaran 2.png",
                                              height: size.height * .15,
                                              width: size.width * .416,
                                            ),
                                            const Text(
                                                'nomor pelanggan tidak ditemukan'),
                                            const Text(
                                                'coba deh perhatiin lagi'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Oke'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  });
                            }
                          },
                          child: const Text.rich(
                            TextSpan(
                              text: "Lanjutkan",
                            ),
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                      ))
                  : Container()),
        ]),
      ),
    );
  }
}
