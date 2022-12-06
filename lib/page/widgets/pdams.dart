import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../transaction/listdaerah.dart';
import '../transaction/pembayaran.dart';

class PDAMS extends StatefulWidget {
  int type;
  PDAMS({
    required this.type,
    super.key,
  });

  @override
  State<PDAMS> createState() => _PDAMSState();
}

class _PDAMSState extends State<PDAMS> {
  String koko = "";
  String? daeras;
  TextEditingController bambang = TextEditingController();
  TextEditingController wilayah = TextEditingController();
  @override
  Widget build(BuildContext context) {
    daeras = ModalRoute.of(context)!.settings.arguments as String?;
    if (daeras != null) {
      wilayah.text = daeras!;
    }
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
                  controller: wilayah,
                  readOnly: true,
                  onTap: () async {
                    wilayah.text = await Navigator.push(
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
                        onPressed: () async {
                          wilayah.text = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wilayahpicker()));
                        },
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
                          text: "Silahkan Masukkan Nomor Pelanggan",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ))),
                ),
                SizedBox(
                  height: size.height * .016,
                ),
                TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: bambang.text.isEmpty
                      ? InputDecoration(
                          prefixIcon: Icon(Icons.water_drop),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "0853xxxxxxxx")
                      : InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  bambang.text = "";
                                  bambang.clear();
                                });
                              },
                              icon: Icon(Icons.cancel)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
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
                      bambang.text.isEmpty
                          ? TextSpan(
                              text: "Silahkan Masukkan Nomor Pelanggan Anda",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff5C5D61),
                                fontSize: 12,
                              ))
                          : bambang.text.length > 4 &&
                                  bambang.text.length < 8 &&
                                  wilayah.text.isNotEmpty
                              ? TextSpan(
                                  text: "Silahkan Lanjutkan Ke Pembayaran",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5D61),
                                    fontSize: 12,
                                  ))
                              : wilayah.text.isEmpty
                                  ? TextSpan(
                                      text: "Silahkan Pilih Daerah Anda",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red,
                                        fontSize: 12,
                                      ))
                                  : TextSpan(
                                      text:
                                          "Silahkan Masukkan Nomor Pelanggan Yang Benar",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red,
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
                child: wilayah.text != "" &&
                        bambang.text.length > 4 &&
                        bambang.text.length < 8
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
                              if (wilayah.text != "" &&
                                  bambang.text.length > 4 &&
                                  bambang.text.length < 8) {
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
                        ))
                    : Container()),
          ])),
    );
    ;
  }
}
