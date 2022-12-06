import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/page/transaction/pembayaran_telekomunikasi.dart';
import 'package:ppodb_2/page/widgets/checkstatus.dart';

import '../../models/dummymodel.dart';
import '../transaction/pembayaran.dart';

class Pulsa_provider extends StatefulWidget {
  int type;
  List popo;
  Pulsa_provider({super.key, required this.popo, required this.type});

  @override
  State<Pulsa_provider> createState() => _Pulsa_providerState();
}

class _Pulsa_providerState extends State<Pulsa_provider> {
  String status = "";
  late int harga;
  late String providers;
  TextEditingController bambang = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bambang.text.length < 10 ||
              bambang.text.length > 13 ||
              bambang.text == "" ||
              bambang.text[0] != "0" ||
              bambang.text[1] != "8"
          ? Colors.white
          : Color(0xfff2f3f6),
      appBar: AppBar(
        title: Text(
          "Pulsa",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * .0444,
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: bambang.text == ""
                        ? InputDecoration(
                            prefixIcon: Icon(Icons.phone_android),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "0853xxxxxxxx")
                        : InputDecoration(
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: bambang.text.length > 0 && bambang.text.length < 4 ||
                                        bambang.text.length > 13
                                    ? Icon(Icons.phone_android)
                                    : bambang.text[2] == "5" && bambang.text[3] == "2" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "3" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "1" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "7" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "6"
                                        ? Image.asset(
                                            "assets/image/telkomsel1.png",
                                            width: size.width * .024,
                                            height: size.height * .024,
                                          )
                                        : bambang.text[2] == "1" && bambang.text[3] == "1" ||
                                                bambang.text[2] == "1" &&
                                                    bambang.text[3] == "2" ||
                                                bambang.text[2] == "1" &&
                                                    bambang.text[3] == "3" ||
                                                bambang.text[2] == "2" &&
                                                    bambang.text[3] == "1" ||
                                                bambang.text[2] == "2" &&
                                                    bambang.text[3] == "2"
                                            ? Image.asset(
                                                "assets/image/telkomsel1.png",
                                                width: size.width * .024,
                                                height: size.height * .024,
                                              )
                                            : bambang.text[2] == "1" && bambang.text[3] == "7" ||
                                                    bambang.text[2] == "1" &&
                                                        bambang.text[3] ==
                                                            "8" ||
                                                    bambang.text[2] == "1" &&
                                                        bambang.text[3] ==
                                                            "9" ||
                                                    bambang.text[2] == "5" &&
                                                        bambang.text[3] ==
                                                            "9" ||
                                                    bambang.text[2] == "7" &&
                                                        bambang.text[3] ==
                                                            "7" ||
                                                    bambang.text[2] == "7" &&
                                                        bambang.text[3] == "8"
                                                ? Image.asset(
                                                    "assets/image/XL.png",
                                                    width: size.width * .024,
                                                    height: size.height * .024,
                                                  )
                                                : bambang.text[2] == "3" && bambang.text[3] == "2" ||
                                                        bambang.text[2] == "3" && bambang.text[3] == "3" ||
                                                        bambang.text[2] == "3" && bambang.text[3] == "8"
                                                    ? Image.asset(
                                                        "assets/image/Axis_logo_2015.png",
                                                        width:
                                                            size.width * .024,
                                                        height:
                                                            size.height * .024,
                                                      )
                                                    : bambang.text[2] == "9" && bambang.text[3] == "6" || bambang.text[2] == "9" && bambang.text[3] == "5" || bambang.text[2] == "9" && bambang.text[3] == "7" || bambang.text[2] == "9" && bambang.text[3] == "8" || bambang.text[2] == "9" && bambang.text[3] == "9"
                                                        ? Image.asset(
                                                            "assets/image/3-brand.png",
                                                            width: size.width *
                                                                .024,
                                                            height:
                                                                size.height *
                                                                    .024,
                                                          )
                                                        : bambang.text[2] == "8" && bambang.text[3] == "8" || bambang.text[2] == "8" && bambang.text[3] == "1" || bambang.text[2] == "8" && bambang.text[3] == "2" || bambang.text[2] == "8" && bambang.text[3] == "3" || bambang.text[2] == "8" && bambang.text[3] == "4" || bambang.text[2] == "8" && bambang.text[3] == "5" || bambang.text[2] == "8" && bambang.text[3] == "6" || bambang.text[2] == "8" && bambang.text[3] == "7" || bambang.text[2] == "8" && bambang.text[3] == "9"
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
                                    bambang.clear();
                                  });
                                },
                                icon: Icon(Icons.cancel)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                    onChanged: ((value) {
                      setState(() {
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
                        text: providers = checkprovider(bambang.text),
                        style: bambang.text == ""
                            ? TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              )
                            : bambang.text.length < 10 ||
                                    bambang.text.length > 13 ||
                                    bambang.text[0] != "0" ||
                                    bambang.text[1] != "8"
                                ? TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.red,
                                    fontSize: 12)
                                : TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5D61),
                                    fontSize: 12,
                                  ))),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Align(
                alignment: bambang.text.length < 10 ||
                        bambang.text.length > 13 ||
                        bambang.text == ""
                    ? Alignment.center
                    : Alignment.topLeft,
                child: bambang.text.length < 10 && bambang.text.isNotEmpty ||
                        bambang.text.length > 13
                    ? CircularProgressIndicator()
                    : bambang.text == "" ||
                            bambang.text[0] != "0" ||
                            bambang.text[1] != "8"
                        ? Container()
                        : Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "Nominal Pulsa",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ))),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Expanded(
                child: bambang.text.length < 10 ||
                        bambang.text.length > 13 ||
                        bambang.text == "" ||
                        bambang.text[0] != "0" ||
                        bambang.text[1] != "8"
                    ? Container()
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: size.width * .0444,
                            mainAxisSpacing: size.height * .02,
                            mainAxisExtent: 100),
                        itemBuilder: (context, index) {
                          return RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (widget.popo[index].status != "habis") {
                                    if (status != widget.popo[index].name) {
                                      status = widget.popo[index].name;
                                      harga = widget.popo[index].harga -
                                          widget.popo[index].diskon;
                                    } else {
                                      status = "";
                                    }
                                  }
                                });
                              },
                              child: Container(
                                  height: size.height * .135,
                                  width: size.width * .4333,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: widget.popo[index].name != status
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
                                              widget.popo[index].status ==
                                                      "diskon"
                                                  ? "assets/image/Promo_Rounded.png"
                                                  : widget.popo[index].status ==
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
                                                  text: widget.popo[index].name,
                                                  style: TextStyle(
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
                                                  "Bayar: ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(widget.popo[index].harga - widget.popo[index].diskon)}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ))),
                                        )),
                                  ])));
                        },
                        itemCount: widget.popo.length,
                      ),
              ),
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
              child: status != "" &&
                      bambang.text.length > 9 &&
                      bambang.text.length < 14 &&
                      bambang.text[0] == "0" &&
                      bambang.text[1] == "8"
                  ? Container(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: size.width * .9111,
                        height: size.height * .06,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0D40C6),
                              shape: StadiumBorder()),
                          onPressed: () {
                            if (status != "" &&
                                bambang.text.length > 9 &&
                                bambang.text.length <= 13 &&
                                bambang.text[0] == "0" &&
                                bambang.text[1] == "8") {
                              final DummyTransTelekom kiriman =
                                  DummyTransTelekom(
                                      biayaadmin: 0,
                                      harga: harga,
                                      nama: status,
                                      nomor: int.parse(bambang.text),
                                      provider: providers);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PembayranTelekScreen(
                                          trans: kiriman,
                                        )),
                              );
                            }
                          },
                          child: Text.rich(
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
    ;
  }
}
