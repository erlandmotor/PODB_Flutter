import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/listdaerah.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';
import 'package:ppodb_2/page/transaction/voucher_picker_screen.dart';

class PDAMscreen extends StatefulWidget {
  const PDAMscreen({super.key});

  @override
  State<PDAMscreen> createState() => _PDAMscreenState();
}

class _PDAMscreenState extends State<PDAMscreen> {
  String koko = "";

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
          "PDAM",
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
                          text: "Pilih Wilayah",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ))),
                ),
                SizedBox(
                  height: size.height * .016,
                ),
                TextField(
                  readOnly: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Wilayahpicker()));
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Wilayah"),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                          text: "Pilih Wilayah",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ))),
                ),
                SizedBox(
                  height: size.height * .016,
                ),
                Container(
                  color: Colors.white,
                ),
                TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: koko == ""
                      ? InputDecoration(
                          prefixIcon: Icon(Icons.water_drop),
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
                SizedBox(
                  height: size.height * .005,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                          text: "Silahkan Masukkan Nomor Pelanggan Anda",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5D61),
                            fontSize: 12,
                          ))),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .044,
                  right: size.width * .044,
                  bottom: size.height * .1),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  )),
            ),
          ])),
    );
  }
}
