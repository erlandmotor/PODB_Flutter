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
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                              text: "Pilihan Voucher",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ))),
                    ),
                    SizedBox(
                      height: size.height * .01125,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.black38, // Set border color
                              width: 1.0)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * .0333,
                            right: size.width * .0333,
                            top: size.height * .02,
                            bottom: size.height * .02),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 84,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: Colors
                                              .black38, // Set border color
                                          width: 1.0),
                                      color: Color(0xff0D40C6)),
                                  child: Center(
                                    child: Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "DISKON\n80%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white))),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Container(
                                      height: size.height * .0275,
                                      width: size.width * .1583333,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                        border: Border.all(
                                            color: Colors
                                                .black38, // Set border color
                                            width: 1.0),
                                        color: Color(0xffE61010),
                                      ),
                                      child: Text.rich(
                                          textAlign: TextAlign.center,
                                          TextSpan(
                                              text: "Telkomsel",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color(0xffFFFFFF)))),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * .04,
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text.rich(
                                      textAlign: TextAlign.left,
                                      TextSpan(
                                          text: "PULSA VOUCHER\nDISKON 80%",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ))),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text.rich(
                                      textAlign: TextAlign.left,
                                      TextSpan(
                                          text:
                                              "sd Rp2.000\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
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
                                          text: "Berlaku Hingga: 30.11.2022",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                          ))),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .1,
                            ),
                            Container(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: size.width * .191,
                                  height: size.height * .0425,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: StadiumBorder(),
                                        side: BorderSide(
                                            width: 1, color: Colors.blue)),
                                    onPressed: () {},
                                    child: Text.rich(
                                      TextSpan(
                                        text: "Pakai",
                                      ),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue,
                                          fontSize: 14),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ])))),
    );
  }
}
