import 'package:flutter/material.dart';

class Voucherpicker extends StatefulWidget {
  const Voucherpicker({super.key});

  @override
  State<Voucherpicker> createState() => _VoucherpickerState();
}

class _VoucherpickerState extends State<Voucherpicker> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Voucher",
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
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .016, right: size.width * .016),
                  child: Column(children: [
                    SizedBox(
                      height: size.height * .016,
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: "Voucher",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ))),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: size.height * .012,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/image/mdi_voucher.png",
                                    width: size.width * .02,
                                    height: size.height * .016,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Masukkan Kode Voucher"),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff0D40C6),
                            ),
                            height: size.height * .08,
                            width: size.width * .2,
                            child: Center(
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(
                                      text: "Pakai",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white))),
                            ),
                          ),
                        ),
                      ],
                    )
                  ])))),
    );
  }
}
