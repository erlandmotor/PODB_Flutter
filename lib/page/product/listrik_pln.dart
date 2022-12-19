import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/login/dummymodel.dart';
import '../transaction/pembayaran.dart';

class Listrik_Pln_screen extends StatefulWidget {
  int tipe;
  Listrik_Pln_screen({super.key, required this.tipe});

  @override
  State<Listrik_Pln_screen> createState() => _Listrik_Pln_screenState();
}

class _Listrik_Pln_screenState extends State<Listrik_Pln_screen> {
  TextEditingController bambang = TextEditingController();
  List<PelangganListrik> fafa = [
    PelangganListrik(
        id: 1,
        name: "Arya Fajar",
        nomorpelanggan: 123456789101,
        periode: "December 2022",
        tagihan: 21150000),
    PelangganListrik(
        id: 2,
        name: "malika",
        nomorpelanggan: 522540682236,
        periode: "Desmber 2022",
        tagihan: 58000)
  ];
  late PelangganListrik listrik;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Listrik PLN",
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
                                : "",
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
                height: size.height * .03,
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: size.width * .044,
                  right: size.width * .044,
                  bottom: size.height * .1),
              child: bambang.text.length > 9 && bambang.text.length < 14
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
                                listrik = fafa[i];
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
                                          listrik: listrik,
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
                                                'yhaa. kode tidak ditemukan nih'),
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
