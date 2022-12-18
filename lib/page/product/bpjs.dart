import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/dummymodel.dart';
import '../transaction/pembayaran.dart';

class BPJSScreen extends StatefulWidget {
  int tipe;
  BPJSScreen({super.key, required this.tipe});

  @override
  State<BPJSScreen> createState() => _BPJSScreenState();
}

class _BPJSScreenState extends State<BPJSScreen> {
  List<DummyBPJS> fafa = [
    DummyBPJS(
        id: 1,
        kode: 1234567891011,
        name: "Arya Fajar",
        periode: "1 Bulan",
        harga: 35000,
        person: 4),
    DummyBPJS(
        id: 2,
        kode: 0001865770942,
        name: "Lunna Ismi",
        periode: "1 bulan",
        harga: 35000,
        person: 3)
  ];
  late DummyBPJS bpjs;
  TextEditingController bambang = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "BPJS",
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
                        text: "Nomor VA Keluarga",
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
                            prefixIcon: const Icon(Icons.family_restroom),
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
                            ? "Silahkan masukkan nomor VA keluarga anda"
                            : bambang.text.length != 13
                                ? "Silahkan masukkan nomor yang valid"
                                : "Silahkan lanjutkan ke pembayaran",
                        style: bambang.text.isEmpty
                            ? const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              )
                            : bambang.text.length != 13
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
              Container(
                width: size.width * 9111,
                height: size.height * .11,
                color: const Color(0xff0D40C614),
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
                    SizedBox(width: size.width * .0277),
                    SizedBox(
                      width: size.width * .7555,
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: size.height * .015,
                              bottom: size.height * .015,
                              right: size.width * .033),
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "Status tagihan BPJS akan diperbarui maks. 3x24jam (hari kerja) setelah transaksi berhasil.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: size.width * .044,
                  right: size.width * .044,
                  bottom: size.height * .025),
              child: bambang.text.length == 13
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
                              if (fafa[i].kode == int.parse(bambang.text)) {
                                bpjs = fafa[i];
                              }
                            }
                            var contain = fafa.indexWhere((element) =>
                                element.kode == int.parse(bambang.text));
                            if (contain >= 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pembayaranscreen(
                                          terima: KirimanKonfirm(
                                              tipe: widget.tipe,
                                              biayaadmin: 2500,
                                              nomor: int.parse(bambang.text)),
                                          bpjs: bpjs,
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
