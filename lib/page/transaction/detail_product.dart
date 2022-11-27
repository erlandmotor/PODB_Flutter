import 'package:flutter/material.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String koko = "";
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
          left: size.width * .016,
          right: size.width * .016,
        ),
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * .016,
              right: size.width * .016,
            ),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    width: size.width * 3.28,
                    height: size.height * .14,
                    child: Container(
                      color: Colors.white,
                    ))),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .016,
                right: size.width * .016,
                bottom: size.height * .08),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: size.width * 3.28,
                  height: size.height * .07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0D40C6),
                        shape: StadiumBorder()),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pembayaranscreen()));
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
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .016, right: size.width * .016),
            child: Column(
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
                TextField(
                  decoration: koko == ""
                      ? InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "0853xxxxxxxx")
                      : InputDecoration(
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
                    });
                  }),
                  controller: bambang,
                  keyboardType: TextInputType.phone,
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
                                                  koko[2] == "5" &&
                                                      koko[3] == "1"
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
                                                                          koko[2] == "8" && koko[3] == "1" ||
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
                  height: size.height * .02,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * .135,
                      width: size.width * .4333,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                            height: size.height * .075,
                            width: size.width * .433,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/image/Normal_Rounded.png",
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: size.width * .03636,
                                top: size.height * .01,
                                bottom: size.height * .01,
                              ),
                              child: Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: "Rp\n5.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.white))),
                            )),
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
                                  text: "Bayar: Rp7.000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ))),
                            ))
                      ]),
                    ),
                    Container(
                      height: size.height * .135,
                      width: size.width * .4333,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          height: size.height * .075,
                          width: size.width * .433,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/image/Promo_Rounded.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: size.width * .03636,
                              top: size.height * .01,
                              bottom: size.height * .01,
                            ),
                            child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                    text: "Rp\n10.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white))),
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
                                  text: "Bayar: Rp10.200",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ))),
                            )),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * .135,
                      width: size.width * .4333,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Stack(children: [
                          Container(
                              height: size.height * .075,
                              width: size.width * .433,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0)),
                                color: Color(0xff0D40C6),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * .03636,
                                  top: size.height * .01,
                                  bottom: size.height * .01,
                                ),
                                child: Text.rich(
                                    textAlign: TextAlign.left,
                                    TextSpan(
                                        text: "Rp\n5.000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.white))),
                              )),
                          Container(
                            height: size.height * .075,
                            width: size.width * .433,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image/Ellipse.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ]),
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
                                  text: "Bayar: Rp7.000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ))),
                            ))
                      ]),
                    ),
                    Container(
                      height: size.height * .135,
                      width: size.width * .4333,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          height: size.height * .075,
                          width: size.width * .433,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/image/Promo_Rounded.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: size.width * .03636,
                              top: size.height * .01,
                              bottom: size.height * .01,
                            ),
                            child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                    text: "Rp\n10.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white))),
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
                                  text: "Bayar: Rp10.200",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ))),
                            )),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
