import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String koko = "";
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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: koko.length < 10 ||
              koko.length > 13 ||
              koko == "" ||
              koko[0] != "0" ||
              koko[1] != "8"
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
                height: size.height * .02,
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
                child: koko.length < 10 ||
                        koko.length > 13 ||
                        koko == "" ||
                        koko[0] != "0" ||
                        koko[1] != "8"
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
                                  if (fafa[index].status != "habis") {
                                    status = fafa[index].name;
                                  }
                                  ;
                                });
                              },
                              child: Container(
                                  height: size.height * .135,
                                  width: size.width * .4333,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: fafa[index].name != status
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
                                              fafa[index].status == "diskon"
                                                  ? "assets/image/Promo_Rounded.png"
                                                  : fafa[index].status ==
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
                                                  text: fafa[index].name,
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
                                                  "Bayar: ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(fafa[index].harga - fafa[index].diskon)}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ))),
                                        )),
                                  ])));
                        },
                        itemCount: fafa.length,
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
            child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: size.width * .9111,
                  height: size.height * .06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(status != "" &&
                                koko.length > 9 &&
                                koko.length <= 13 &&
                                koko[0] == "0" &&
                                koko[1] == "8"
                            ? 0xff0D40C6
                            : 0xffD9DCE3),
                        shape: StadiumBorder()),
                    onPressed: () {
                      if (status != "" &&
                          koko.length > 9 &&
                          koko.length <= 13 &&
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
