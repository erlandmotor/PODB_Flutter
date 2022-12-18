import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ppodb_2/page/transaction/pembayranwallet.dart';

class KirimUang extends StatefulWidget {
  int type;
  String keys;
  KirimUang({super.key, required this.type, required this.keys});

  @override
  State<KirimUang> createState() => _KirimUangState();
}

class _KirimUangState extends State<KirimUang> {
  final formKey = GlobalKey<FormState>();
  TextEditingController bambang = TextEditingController();
  TextEditingController jumlah = TextEditingController();
  TextEditingController kata = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bambang.text = widget.keys;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Kirim Uang",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Padding(
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
                  child: const Text.rich(
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
                    TextFormField(
                      readOnly: true,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: bambang.text == ""
                          ? InputDecoration(
                              prefixIcon: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "0853xxxxxxxx")
                          : InputDecoration(
                              prefixIcon: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.phone_android,
                                    color: Colors.black,
                                  )),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.cancel)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                      validator: (value) {
                        if (value == null ||
                            value.length < 10 ||
                            value.length > 13) {
                          return 'Nomor handphone tidak ditemukan';
                        } else if (value[0] != "0" || value[1] != "8") {
                          return "Maaf hanya menerima nomor provider indonesia";
                        }
                        return null;
                      },
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
                          text: widget.type == 10
                              ? "ShopeePay"
                              : widget.type == 11
                                  ? "Dana"
                                  : widget.type == 12
                                      ? "Gopay"
                                      : widget.type == 13
                                          ? "linkaja"
                                          : "Ovo",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5D61),
                            fontSize: 12,
                          ))),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                          text: "Masukkan Jumlah (Rp)",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ))),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  controller: jumlah,
                  style: const TextStyle(
                      color: Color(0xff0D40C6),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                  decoration: jumlah.text == ""
                      ? InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          hintText: "0",
                          hintStyle: const TextStyle(
                              color: Color(0xff0D40C6),
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                          fillColor: const Color(0xffE7ECF9),
                          prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * .015,
                                  bottom: size.height * .015),
                              child: const Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: "Rp",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
                                        color: Color(0xff0D40C6),
                                      )))),
                        )
                      : InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          hintText: "0",
                          hintStyle: const TextStyle(
                              color: Color(0xff0D40C6),
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                          fillColor: const Color(0xffE7ECF9),
                          suffixIcon: IconButton(
                              onPressed: () {
                                jumlah.clear();
                              },
                              icon: const Icon(
                                Icons.cancel,
                                color: Color(0xff0D40C6),
                              )),
                          prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * .015,
                                  bottom: size.height * .015),
                              child: const Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: "Rp",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
                                        color: Color(0xff0D40C6),
                                      )))),
                        ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/c.png",
                      width: size.width * .1,
                      height: size.height * .045,
                    ),
                    SizedBox(
                      width: size.width * .066,
                    ),
                    Column(
                      children: [
                        const Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "MyCuan saldo",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                ))),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        const Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "Saldo: Rp 800.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12,
                                ))),
                      ],
                    )
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                        textAlign: TextAlign.left,
                        TextSpan(
                            text: "Tulis Pesan (optional)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 16,
                            )))),
                SizedBox(
                  height: size.height * .01,
                ),
                SizedBox(
                  height: size.height * .14,
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    controller: kata,
                    maxLines: 50,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Cth: Utang gw lunas yah bro"),
                  ),
                ),
                SizedBox(
                  height: size.height * .005,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                          text: "Maksimal 50 karakter yah",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5D61),
                            fontSize: 12,
                          ))),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: size.width * .044,
                    right: size.width * .044,
                    bottom: size.height * .1),
                child: jumlah.text != "" && int.parse(jumlah.text) > 10000
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
                              final valid = formKey.currentState!.validate();
                              if (valid) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PembayaranWallet(
                                              harga: int.parse(jumlah.text),
                                              pesans: kata.text,
                                              nomor: widget.keys,
                                              admin: 500,
                                              type: widget.type,
                                            )));
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
      ),
    );
  }
}
