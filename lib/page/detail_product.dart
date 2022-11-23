import 'package:flutter/material.dart';
import 'package:ppodb_2/page/pembayaran.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String kondisi = "Silahkan Masukkan Nomor Handphone Anda";
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
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ))),
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
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "0853xxxxxxxx"),
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
                          text: kondisi,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5D61),
                            fontSize: 12,
                          ))),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
