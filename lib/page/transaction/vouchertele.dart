import 'package:flutter/material.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/transaction/pembayaran.dart';
import 'package:ppodb_2/page/widgets/checkstatus.dart';

class Vouchertelepick extends StatefulWidget {
  int type;
  Vouchertelepick({super.key, required this.type});

  @override
  State<Vouchertelepick> createState() => _VouchertelepickState();
}

class _VouchertelepickState extends State<Vouchertelepick> {
  late DummyVoucher simpanan;

  List<DummyVoucher> viewlist = [];
  List<DummyVoucher> voucher = [
    DummyVoucher(
        id: 1,
        nama: "Diskon\n20000",
        namavoucher: "Pulsa Corner Potongan Rp.2.000",
        kode: "MYCUANBERKAH",
        diskon: 2000,
        tipe: 1,
        stock: 12,
        expired: "20.9.2023"),
    DummyVoucher(
        id: 2,
        nama: "Diskon\n3000",
        namavoucher: "Pulsa Corner Potongan Rp.3.000",
        kode: "MYCUANBERKAH6653",
        diskon: 3000,
        tipe: 1,
        stock: 12,
        expired: "21.9.2023"),
    DummyVoucher(
        id: 3,
        nama: "Diskon\n2000",
        namavoucher: "Pulsa Corner Potongan Rp.2.000",
        kode: "MYCUANBERKAH4214",
        diskon: 2000,
        tipe: 1,
        stock: 12,
        expired: "23.9.2023"),
    DummyVoucher(
        id: 4,
        nama: "Diskon\n2000",
        namavoucher: "Pulsa Corner Potongan Rp.2.000",
        kode: "MYCUANBERKAH1512",
        diskon: 2000,
        tipe: 1,
        stock: 12,
        expired: "24.9.2023"),
    DummyVoucher(
        id: 5,
        nama: "Diskon\n2000",
        namavoucher: "Pulsa Corner Potongan Rp.2.000",
        kode: "MYCUANBERKAH155",
        diskon: 2000,
        tipe: 1,
        stock: 12,
        expired: "25.10.2023"),
    DummyVoucher(
        id: 6,
        nama: "Diskon\n3000",
        namavoucher: "Paket Data Corner Potongan Rp.3.000",
        kode: "MYCUANBERKAH125",
        diskon: 3000,
        tipe: 2,
        stock: 12,
        expired: "3.2.2024"),
    DummyVoucher(
        id: 7,
        nama: "Diskon\n4000",
        namavoucher: "Pulsa Corner Potongan Rp.4.000",
        kode: "MYCUANBERKAH124",
        diskon: 4000,
        tipe: 2,
        stock: 12,
        expired: "20.9.2023"),
    DummyVoucher(
        id: 8,
        nama: "Diskon\n5000",
        namavoucher: "Pulsa Corner Potongan Rp.5.000",
        kode: "MYCUANBERKAH123",
        diskon: 5000,
        tipe: 2,
        stock: 12,
        expired: "20.9.2023"),
    DummyVoucher(
        id: 9,
        nama: "Diskon\n6000",
        namavoucher: "Pulsa Corner Potongan Rp.6.000",
        kode: "MYCUANBERKAH12",
        diskon: 6000,
        tipe: 2,
        stock: 12,
        expired: "20.9.2023"),
    DummyVoucher(
        id: 10,
        nama: "Diskon\n7000",
        namavoucher: "Pulsa Corner Potongan Rp.7.000",
        kode: "MYCUANBERKAH141252",
        diskon: 7000,
        tipe: 2,
        stock: 0,
        expired: "20.9.2023"),
  ];
  bool tersedia = false;
  String status = "";
  TextEditingController pakai = TextEditingController();
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < voucher.length; i++) {
      if (widget.type == voucher[i].tipe) {
        viewlist.add(voucher[i]);
        tersedia = true;
      }
      ;
    }
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
        body: Stack(
          children: [
            Padding(
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
                            height: size.height * .012,
                          ),
                          TextField(
                            readOnly: tersedia == false ? true : false,
                            textCapitalization: TextCapitalization.characters,
                            controller: pakai,
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
                                hintText: tersedia == true
                                    ? "Silahkan Pilih Kode Voucher"
                                    : "Maaf Voucher Sudah Habis"),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          tersedia == true
                              ? Column(children: [
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
                                  for (int i = 0; i < viewlist.length; i++)
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                  color: Colors
                                                      .black38, // Set border color
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
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black38, // Set border color
                                                              width: 1.0),
                                                          color: viewlist[i]
                                                                      .stock !=
                                                                  0
                                                              ? Color(
                                                                  0xff0D40C6)
                                                              : Color(
                                                                  0xff8C8E93)),
                                                      child: Center(
                                                        child: Text.rich(
                                                            textAlign: TextAlign
                                                                .center,
                                                            TextSpan(
                                                                text:
                                                                    "${viewlist[i].nama}",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white))),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: size.height *
                                                              .005,
                                                        ),
                                                        Container(
                                                          height: size.height *
                                                              .0275,
                                                          width: size.width *
                                                              .1583333,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10)),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black38, // Set border color
                                                                width: 1.0),
                                                            color: viewlist[i]
                                                                        .stock !=
                                                                    0
                                                                ? Color(
                                                                    0xffE61010)
                                                                : Color(
                                                                    0xff8C8E93),
                                                          ),
                                                          child: Text.rich(
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              TextSpan(
                                                                  text: checktipe(
                                                                      viewlist[
                                                                              i]
                                                                          .tipe),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          12,
                                                                      color: Color(
                                                                          0xffFFFFFF)))),
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
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: SizedBox(
                                                          width:
                                                              size.width * .365,
                                                          child: Text.rich(
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              TextSpan(
                                                                  text:
                                                                      "${viewlist[i].namavoucher}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: viewlist[i].tipe !=
                                                                            0
                                                                        ? Color(
                                                                            0xff262729)
                                                                        : Color(
                                                                            0xff8C8E93),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        16,
                                                                  ))),
                                                        )),
                                                    SizedBox(
                                                      height: size.height * .02,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: SizedBox(
                                                          width:
                                                              size.width * .365,
                                                          child: Text.rich(
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              TextSpan(
                                                                  text:
                                                                      "Berlaku Hingga:${viewlist[i].expired}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: viewlist[i].tipe !=
                                                                            0
                                                                        ? Color(
                                                                            0xff262729)
                                                                        : Color(
                                                                            0xff8C8E93),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        10,
                                                                  ))),
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: size.width * .0305,
                                                ),
                                                Container(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: size.width * .191,
                                                      height:
                                                          size.height * .0425,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: viewlist[
                                                                            i]
                                                                        .stock !=
                                                                    0
                                                                ? Colors.white
                                                                : Color(
                                                                    0xff8C8E93),
                                                            shape:
                                                                StadiumBorder(),
                                                            side: BorderSide(
                                                                width: 1,
                                                                color: viewlist[i]
                                                                            .stock !=
                                                                        0
                                                                    ? Color(
                                                                        0xff0D40C6)
                                                                    : Color(
                                                                        0xff8C8E93))),
                                                        onPressed: () {
                                                          if (viewlist[i]
                                                                  .stock !=
                                                              0) {
                                                            pakai.text =
                                                                viewlist[i]
                                                                    .kode;
                                                            simpanan =
                                                                viewlist[i];
                                                            setState(() {
                                                              status =
                                                                  viewlist[i]
                                                                      .nama;
                                                            });
                                                            ;
                                                          }
                                                        },
                                                        child: Text.rich(
                                                          TextSpan(
                                                            text: viewlist[i]
                                                                        .stock !=
                                                                    0
                                                                ? "Pakai"
                                                                : "Habis",
                                                          ),
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: viewlist[i]
                                                                          .stock !=
                                                                      0
                                                                  ? Color(
                                                                      0xff0D40C6)
                                                                  : Colors
                                                                      .white,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * .01,
                                        ),
                                      ],
                                    ),
                                  SizedBox(
                                    height: size.height * .1,
                                  ),
                                ])
                              : Padding(
                                  padding: EdgeInsets.only(
                                      right: size.width * .044,
                                      left: size.width * .044),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height * .02,
                                      ),
                                      Container(
                                        width: size.width * .9138,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/image/amico.png",
                                              height: size.height * .3,
                                            ),
                                            Text.rich(
                                                textAlign: TextAlign.center,
                                                TextSpan(
                                                    text:
                                                        "Tidak ada voucher yang tersedia",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 24,
                                                        color: Colors.black))),
                                            SizedBox(
                                              height: size.height * .02,
                                            ),
                                            Text.rich(
                                                textAlign: TextAlign.center,
                                                TextSpan(
                                                    text:
                                                        "Voucher antara habis atau kelewatan nih !!\ngood luck next time ^_^ ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16,
                                                        color: Colors.black))),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * .1,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * .016,
                                            right: size.width * .016,
                                          ),
                                          child: Container(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                width: size.width * 3.28,
                                                height: size.height * .07,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Color(0xff0D40C6),
                                                          shape:
                                                              StadiumBorder()),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text.rich(
                                                    TextSpan(
                                                      text:
                                                          "Balik Ke Pembayaran",
                                                    ),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ))),
                                    ],
                                  ),
                                ),
                        ])))),
            tersedia == true
                ? Container(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: size.height * .005),
                      child: SizedBox(
                          width: size.width * 3.28,
                          height: size.height * .1,
                          child: Container(
                            color: Colors.white,
                          )),
                    ))
                : SizedBox(),
            tersedia == true
                ? Padding(
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
                                backgroundColor: Color(
                                    status != "" ? 0xff0D40C6 : 0xffD9DCE3),
                                shape: StadiumBorder()),
                            onPressed: () {
                              if (pakai.text.isNotEmpty && simpanan != null) {
                                Navigator.pop(context, simpanan);
                              }
                            },
                            child: Text.rich(
                              TextSpan(
                                text: "Terapkan Voucher",
                              ),
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        )),
                  )
                : SizedBox()
          ],
        ));
  }
}
