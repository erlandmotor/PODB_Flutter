import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/kirimuang.dart';

import '../widgets/nominalpulsa.dart';

class Topupwallet extends StatefulWidget {
  int type;
  Topupwallet({super.key, required this.type});

  @override
  State<Topupwallet> createState() => _TopupwalletState();
}

class _TopupwalletState extends State<Topupwallet> {
  List<Dummylangganan> dummy = [
    Dummylangganan(id: 1, name: "Novita Bachmid", nomor: 895323773144),
    Dummylangganan(id: 2, name: "Lyodra Ginting", nomor: 879028927238),
    Dummylangganan(id: 3, name: "Tiara Andini", nomor: 8975632479189)
  ];
  final formKey = GlobalKey<FormState>();
  TextEditingController bambang = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.type == 10
              ? "ShopeePay"
              : widget.type == 11
                  ? "Dana"
                  : widget.type == 12
                      ? "Gopay"
                      : widget.type == 13
                          ? "linkaja"
                          : "Ovo",
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: bambang.text == ""
                          ? InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "0853xxxxxxxx")
                          : InputDecoration(
                              prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.phone_android)),
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
                              ? "Silahkan masukan nomor handphone yang digunakan\npada aplikasi ini"
                              : "",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5D61),
                            fontSize: 12,
                          ))),
                ),
                SizedBox(
                  height: size.height * .03125,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                          text: "Transaksi Terakhir",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16,
                          ))),
                ),
                ListView.separated(
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: dummy[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 16,
                                ))),
                        subtitle: Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "+62 ${dummy[index].nomor}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 16,
                                ))),
                        trailing: IconButton(
                            onPressed: (() {
                              bambang.text = "0${dummy[index].nomor}";
                            }),
                            icon: Icon(Icons.navigate_next_outlined)),
                      );
                    }),
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 2,
                      );
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dummy.length)
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KirimUang(
                                            type: widget.type,
                                            keys: bambang.text)));
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
