import 'package:flutter/material.dart';
import 'package:ppodb_2/page/Succesfull_Screen.dart';
import 'package:ppodb_2/page/voucher_picker_screen.dart';

class Pembayaranscreen extends StatefulWidget {
  const Pembayaranscreen({super.key});

  @override
  State<Pembayaranscreen> createState() => _PembayaranscreenState();
}

class _PembayaranscreenState extends State<Pembayaranscreen> {
  TextEditingController nomor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    nomor.text = "08123456789";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Pembayaran",
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
                            text: "Telkomsel",
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
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/image/telkomsel1.png",
                          width: size.width * .024,
                          height: size.height * .024,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    keyboardType: TextInputType.phone,
                    controller: nomor,
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Container(
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
                  SizedBox(
                    height: size.height * .016,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.navigate_next,
                            color: Color(0xffFF9D0B),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Voucherpicker()));
                          },
                        ),
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
                        hintText: "Punya Kode Voucher?"),
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
                            text: "Detail Transaksi",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ))),
                  ),
                  SizedBox(
                    height: size.height * .009,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                    textAlign: TextAlign.left,
                                    TextSpan(
                                        text: "Telkomsel 100.000",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ))),
                              ),
                              SizedBox(
                                height: size.height * .016,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(TextSpan(
                                      text: "Harga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ))),
                                  Text.rich(TextSpan(
                                      text: "Rp100.000",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ))),
                                ],
                              ),
                              Divider(
                                color: Color(0xffD9DCE3),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(TextSpan(
                                      text: "Biaya admin",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ))),
                                  Text.rich(TextSpan(
                                      text: "Rp0",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff0D40C614),
                          height: size.height * .06,
                          width: size.width * 3.28,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(TextSpan(
                                    text: "Total Pembayaran",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                                Text.rich(TextSpan(
                                    text: "Rp101.000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ))),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .016,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                        textAlign: TextAlign.left,
                        TextSpan(
                            text: "Pilih Metode Pembayaran",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ))),
                  ),
                  SizedBox(
                    height: size.height * .009,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
                            width: 1.0)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/image/logo.png",
                            width: size.width * .1,
                            height: size.height * .045,
                          ),
                          title: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Mycuan Saldo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ))),
                          subtitle: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Saldo: Rp800.000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ))),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xffD9DCE3),
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/image/dana.png",
                            width: size.width * .1,
                            height: size.height * .045,
                          ),
                          title: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "DANA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ))),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xffD9DCE3),
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/image/gopay.png",
                            width: size.width * .1,
                            height: size.height * .045,
                          ),
                          title: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "GOPAY",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ))),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .07,
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
                                        builder: (context) => SuccesPage()));
                              },
                              child: Text.rich(
                                TextSpan(
                                  text: "Bayar Sekarang",
                                ),
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ),
                          ))),
                ],
              ),
            ),
          )),
    );
  }
}
