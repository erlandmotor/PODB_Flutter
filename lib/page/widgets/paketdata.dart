import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/pembayaran_telekomunikasi.dart';
import 'package:ppodb_2/page/widgets/checkstatus.dart';

class Paketdatas extends StatefulWidget {
  List popo;
  int type;
  Paketdatas({super.key, required this.popo, required this.type});

  @override
  State<Paketdatas> createState() => _PaketdataState();
}

class _PaketdataState extends State<Paketdatas> {
  String status = "";
  late int harga;
  TextEditingController bambang = TextEditingController();
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
              color:
                  checkvalid(bambang.text) ? Colors.white : Colors.transparent,
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
                  TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: bambang.text.isEmpty
                        ? InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "0853xxxxxxxx")
                        : InputDecoration(
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: bambang.text.length > 0 && bambang.text.length < 4 ||
                                        bambang.text.length > 13 ||
                                        bambang.text[0] != "0" ||
                                        bambang.text[1] != "8"
                                    ? Icon(Icons.phone_android)
                                    : bambang.text[2] == "5" && bambang.text[3] == "2" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "3" ||
                                            bambang.text[2] == "5" &&
                                                bambang.text[3] == "1"
                                        ? Image.asset(
                                            "assets/image/telkomsel1.png",
                                            width: size.width * .024,
                                            height: size.height * .024,
                                          )
                                        : bambang.text[2] == "5" &&
                                                    bambang.text[3] == "7" ||
                                                bambang.text[2] == "5" &&
                                                    bambang.text[3] == "6"
                                            ? Image.asset(
                                                "assets/image/indosat.png",
                                                width: size.width * .024,
                                                height: size.height * .024,
                                              )
                                            : bambang.text[2] == "1" && bambang.text[3] == "1" ||
                                                    bambang.text[2] == "1" &&
                                                        bambang.text[3] ==
                                                            "2" ||
                                                    bambang.text[2] == "1" &&
                                                        bambang.text[3] ==
                                                            "3" ||
                                                    bambang.text[2] == "2" &&
                                                        bambang.text[3] ==
                                                            "1" ||
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
                                                            bambang.text[3] == "9" ||
                                                        bambang.text[2] == "5" && bambang.text[3] == "9" ||
                                                        bambang.text[2] == "7" && bambang.text[3] == "7" ||
                                                        bambang.text[2] == "7" && bambang.text[3] == "8"
                                                    ? Image.asset(
                                                        "assets/image/XL.png",
                                                        width:
                                                            size.width * .024,
                                                        height:
                                                            size.height * .024,
                                                      )
                                                    : bambang.text[2] == "3" && bambang.text[3] == "2" || bambang.text[2] == "3" && bambang.text[3] == "3" || bambang.text[2] == "3" && bambang.text[3] == "8"
                                                        ? Image.asset(
                                                            "assets/image/Axis_logo_2015.png",
                                                            width: size.width *
                                                                .024,
                                                            height:
                                                                size.height *
                                                                    .024,
                                                          )
                                                        : bambang.text[2] == "9" && bambang.text[3] == "6" || bambang.text[2] == "9" && bambang.text[3] == "5" || bambang.text[2] == "9" && bambang.text[3] == "7" || bambang.text[2] == "9" && bambang.text[3] == "8" || bambang.text[2] == "9" && bambang.text[3] == "9"
                                                            ? Image.asset(
                                                                "assets/image/3-brand.png",
                                                                width:
                                                                    size.width *
                                                                        .024,
                                                                height:
                                                                    size.height *
                                                                        .024,
                                                              )
                                                            : bambang.text[2] == "8" && bambang.text[3] == "8" || bambang.text[2] == "8" && bambang.text[3] == "1" || bambang.text[2] == "8" && bambang.text[3] == "2" || bambang.text[2] == "8" && bambang.text[3] == "3" || bambang.text[2] == "8" && bambang.text[3] == "4" || bambang.text[2] == "8" && bambang.text[3] == "5" || bambang.text[2] == "8" && bambang.text[3] == "6" || bambang.text[2] == "8" && bambang.text[3] == "7" || bambang.text[2] == "8" && bambang.text[3] == "9"
                                                                ? Image.asset(
                                                                    "assets/image/smartfren.png",
                                                                    width: size
                                                                            .width *
                                                                        .024,
                                                                    height: size
                                                                            .height *
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
                        text: checkprovider(bambang.text),
                        style: bambang.text.isEmpty
                            ? TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              )
                            : checkvalid(bambang.text)
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
                height: size.height * .03,
              ),
              Align(
                alignment: bambang.text.length < 10 ||
                        bambang.text.length > 13 ||
                        bambang.text.isEmpty
                    ? Alignment.center
                    : Alignment.topLeft,
                child: bambang.text.length < 10 && bambang.text.length > 0 ||
                        bambang.text.length > 13
                    ? CircularProgressIndicator()
                    : checkvalid(bambang.text)
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
                  child: checkvalid(bambang.text)
                      ? Container()
                      : SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              for (var i = 0; i < widget.popo.length; i++)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (status != widget.popo[i].name) {
                                        harga = widget.popo[i].harga;
                                        status = widget.popo[i].name;
                                      } else {
                                        status = "";
                                        harga = 0;
                                      }
                                      ;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: status == widget.popo[i].name
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
                                                  TextSpan(
                                                      text:
                                                          widget.popo[i].name),
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
                                                TextSpan(
                                                    text: widget.popo[i].desc),
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
                                                        "${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(widget.popo[i].harga)}"),
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
              child: status != "" && !checkvalid(bambang.text)
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
                            if (status != "" && !checkvalid(bambang.text)) {
                              final DummyTransTelekom kiriman =
                                  DummyTransTelekom(
                                      biayaadmin: 0,
                                      harga: harga,
                                      nama: status,
                                      nomor: int.parse(bambang.text),
                                      type: widget.type);
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
  }
}
