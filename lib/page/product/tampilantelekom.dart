import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ppodb_2/page/product/detailTelekom.dart';
import 'package:ppodb_2/service/providers/product/product_list_provider.dart';
import 'package:provider/provider.dart';

class Tampilan_telekom extends StatefulWidget {
  int type;

  Tampilan_telekom({super.key, required this.type});

  @override
  State<Tampilan_telekom> createState() => _Tampilan_telekomState();
}

class _Tampilan_telekomState extends State<Tampilan_telekom> {
  String status = "";
  final formKey = GlobalKey<FormState>();
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
          widget.type == 7 ? "Pulsa" : "Paket Data",
          selectionColor: const Color(0xff5C5D61),
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: bambang.text == ""
                          ? InputDecoration(
                              prefixIcon: Icon(widget.type == 7
                                  ? Icons.phone_android
                                  : Icons.mail),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "0853xxxxxxxx")
                          : InputDecoration(
                              prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(widget.type == 7
                                      ? Icons.phone_android
                                      : Icons.phone_android)),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    bambang.clear();
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
                          text: bambang.text == ""
                              ? "Silahkan masukkan nomor handphone anda"
                              : "",
                          style: const TextStyle(
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
                child: bambang.text != ""
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
                                var prov = Provider.of<ProductListProviders>(
                                    context,
                                    listen: false);

                                prov.getdatabaru(widget.type, bambang.text);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Detail_telkomwithproviders(
                                                type: widget.type,
                                                nomor: bambang.text)));
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
