import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/succes.dart';
import 'package:ppodb_2/page/transaction/vouchertele.dart';
import 'package:ppodb_2/page/widgets/checkstatus.dart';

class PembayranTelekScreen extends StatefulWidget {
  DummyTransTelekom trans;
  PembayranTelekScreen({super.key, required this.trans});

  @override
  State<PembayranTelekScreen> createState() => _PembayranTelekScreenState();
} //radiolisten

class _PembayranTelekScreenState extends State<PembayranTelekScreen> {
  String status = "";
  String gopay = "GOPAY";
  String saldo = "Mycuan saldo";
  String dana = "DANA";

  late DummyVoucher vou;
  TextEditingController nomor = TextEditingController();
  TextEditingController voucher = TextEditingController();
  @override
  Widget build(BuildContext context) {
    nomor.text = "0${widget.trans.nomor}";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff2f3f6),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Container(
                width: size.width * 1,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .044444, right: size.width * .044444),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .0163,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text.rich(
                            textAlign: TextAlign.left,
                            TextSpan(
                                text: checkprovider(nomor.text),
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
                              checkPicprovider(nomor.text),
                              width: size.width * .024,
                              height: size.height * .024,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.phone,
                        controller: nomor,
                        readOnly: true,
                      ),
                      SizedBox(height: size.height * .02)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                  width: size.width * 1,
                  height: size.height * .16,
                  color: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: size.width * .044444,
                          right: size.width * .044444),
                      child: Column(children: [
                        SizedBox(
                          height: size.height * .0163,
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
                          onTap: () async {
                            vou = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Vouchertelepick(
                                          type: widget.trans.type,
                                        )));
                            voucher.text = vou.kode;
                            setState(() {
                              widget.trans.diskon = vou.diskon;
                            });
                          },
                          controller: voucher,
                          readOnly: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.navigate_next,
                                  color: Color(0xffFF9D0B),
                                ),
                                onPressed: () async {
                                  vou = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Vouchertelepick(
                                                type: widget.trans.type,
                                              )));
                                  voucher.text = vou.kode;
                                  setState(() {
                                    widget.trans.diskon = vou.diskon;
                                  });
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
                      ]))),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                  width: size.width * 1,
                  color: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: size.width * .044444,
                          right: size.width * .044444),
                      child: Column(children: [
                        SizedBox(
                          height: size.height * .0163,
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
                          height: size.height * .01125,
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
                                      child: SizedBox(
                                        width: size.width * .444583,
                                        child: Text.rich(
                                            textAlign: TextAlign.left,
                                            TextSpan(
                                                text: widget.trans.type == 1
                                                    ? "${checkprovider(nomor.text)} ${widget.trans.nama}"
                                                    : "${widget.trans.nama}",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .02,
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
                                            text:
                                                "${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(widget.trans.harga)}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ))),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * .02,
                                    ),
                                    Divider(
                                      color: Color(0xffD9DCE3),
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      height: size.height * .02,
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
                                            text: widget.trans.biayaadmin == 0
                                                ? "Gratis !"
                                                : "${widget.trans.biayaadmin}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                            ))),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * .02,
                                    ),
                                    widget.trans.diskon != null
                                        ? Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text.rich(TextSpan(
                                                      text: "Voucher",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                      ))),
                                                  Text.rich(TextSpan(
                                                      text:
                                                          "-${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(widget.trans.diskon)}",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14,
                                                      ))),
                                                ],
                                              ),
                                              SizedBox(
                                                height: size.height * .02,
                                              ),
                                            ],
                                          )
                                        : Container()
                                  ],
                                ),
                              ),
                              Container(
                                color: Color(0xff0D40C614),
                                height: size.height * .0725,
                                width: size.width * 3.28,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: size.height * .025,
                                      top: size.height * .025,
                                      left: size.width * .033,
                                      right: size.width * .033),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text.rich(TextSpan(
                                          text: "Total Pembayaran",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ))),
                                      Text.rich(TextSpan(
                                          text: widget.trans.diskon != null
                                              ? NumberFormat.currency(
                                                      locale: 'id',
                                                      symbol: 'Rp',
                                                      decimalDigits: 0)
                                                  .format(widget.trans.harga -
                                                      widget.trans.biayaadmin -
                                                      widget.trans.diskon!)
                                              : NumberFormat.currency(
                                                      locale: 'id',
                                                      symbol: 'Rp',
                                                      decimalDigits: 0)
                                                  .format(widget.trans.harga -
                                                      widget.trans.biayaadmin),
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
                          height: size.height * .02,
                        ),
                      ]))),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .044444, right: size.width * .044444),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .02,
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
                        height: size.height * .01125,
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
                            SizedBox(
                              height: size.height * .01125,
                            ),
                            ListTile(
                              leading: Image.asset(
                                "assets/image/logo.png",
                                width: size.width * .1,
                                height: size.height * .05625,
                              ),
                              title: Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: saldo,
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
                                onPressed: () {
                                  setState(() {
                                    status = saldo;
                                  });
                                },
                                icon: status != saldo
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.black,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                            Divider(
                              color: Color(0xffD9DCE3),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: size.height * .01125,
                            ),
                            ListTile(
                              leading: Image.asset(
                                "assets/image/dana.png",
                                width: size.width * .1,
                                height: size.height * .05625,
                              ),
                              title: Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: dana,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ))),
                              trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    status = dana;
                                  });
                                },
                                icon: status != dana
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.black,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * .01125,
                            ),
                            Divider(
                              color: Color(0xffD9DCE3),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: size.height * .01125,
                            ),
                            ListTile(
                              leading: Image.asset(
                                "assets/image/gopay.png",
                                width: size.width * .1,
                                height: size.height * .05625,
                              ),
                              title: Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: gopay,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ))),
                              trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    status = gopay;
                                  });
                                },
                                icon: status != gopay
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.black,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.blue,
                                      ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * .01125,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .15,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * .005),
                child: SizedBox(
                    width: size.width * 3.28,
                    height: size.height * .1,
                    child: Container(
                      color: Colors.white,
                    )),
              )),
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
                        backgroundColor:
                            Color(status != "" ? 0xff0D40C6 : 0xffD9DCE3),
                        shape: StadiumBorder()),
                    onPressed: () {
                      if (status != "") {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SuccesPages(
                                      type: widget.trans.type,
                                    )),
                            (route) => false);
                      }
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Bayar Sekarang",
                      ),
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
