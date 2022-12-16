import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/riwayat/detail_riwayat.dart';
import 'package:ppodb_2/page/product/detail_product.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';
import 'package:ppodb_2/page/widgets/finite_state.dart';
import 'package:ppodb_2/service/providers/riwayat/riwayat_provider.dart';
import 'package:ppodb_2/shared/shared.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  void initState() {
    Future.delayed(
      Duration.zero,
      () {
        final _provider = Provider.of<RiwayatProvider>(context, listen: false);

        /// Fetch users data
        _provider.fetchRiwayat();
      },
    );

    super.initState();
  }

  PanelController _panelController = PanelController();
  String status = "";
  List<Dummypro> prods = [
    Dummypro(id: 1, name: "Telekomunikasi", pro: [
      Dummycate(id: 1, name: "Pulsa", gmbr: "assets/image/Pulsa.png"),
      Dummycate(id: 2, name: "Paket Data", gmbr: "assets/image/Paket data.png"),
      Dummycate(id: 3, name: "Indihome", gmbr: "assets/image/Indihome.png")
    ]),
    Dummypro(id: 2, name: "Tagihan", pro: [
      Dummycate(id: 4, name: "BPJS", gmbr: "assets/image/BPJS.png"),
      Dummycate(
          id: 5, name: "Listrik", gmbr: "assets/image/Tagihan listrik.png"),
      Dummycate(
          id: 6, name: "Token Listrik", gmbr: "assets/image/Token listrik.png"),
      Dummycate(id: 7, name: "PDAM", gmbr: "assets/image/PDAM.png")
    ]),
    Dummypro(id: 3, name: "Voucher", pro: [
      Dummycate(
          id: 8, name: "Voucher Game", gmbr: "assets/image/Voucher game.png"),
      Dummycate(
          id: 9, name: "Google Play", gmbr: "assets/image/Google Play.png"),
    ]),
    Dummypro(id: 4, name: "Keuangan", pro: [
      Dummycate(id: 10, name: "Shopeepay", gmbr: "assets/image/shopee.png"),
      Dummycate(id: 11, name: "Dana", gmbr: "assets/image/dana.png"),
      Dummycate(id: 12, name: "Gopay", gmbr: "assets/image/gopay.png"),
      Dummycate(id: 13, name: "Linkaja", gmbr: "assets/image/LinkAja.png"),
      Dummycate(id: 14, name: "Ovo", gmbr: "assets/image/ovo.png")
    ]),
  ];
  List<DummyproFilter> prod = [
    DummyproFilter(id: 1, name: "Urutkan", pro: [
      DummyFilter(
        id: 1,
        name: "Terbaru",
      ),
      DummyFilter(
        id: 2,
        name: "Terlama",
      ),
      DummyFilter(
        id: 3,
        name: "Harga Tertinggi",
      ),
      DummyFilter(
        id: 4,
        name: "Harga Terendah",
      )
    ]),

    DummyproFilter(id: 2, name: "Status", pro: [
      DummyFilter(
        id: 5,
        name: "Belum Bayar",
      ),
      DummyFilter(id: 6, name: "Berhasil"),
      DummyFilter(
        id: 7,
        name: "Dibatalkan",
      ),
    ]),

    DummyproFilter(id: 3, name: "Kategori", pro: [
      DummyFilter(
        id: 8,
        name: "Telekomunikasi",
      ),
      DummyFilter(
        id: 9,
        name: "Tagihan",
      ),
      DummyFilter(
        id: 10,
        name: "Keuangan",
      ),
      DummyFilter(
        id: 11,
        name: "Voucher",
      ),
    ]),

    // Dummypro(id: 4, name: "Keuangan", pro: [
    //   Dummycate(id: 10, name: "Shopeepay", gmbr: "assets/image/shopee.png"),
    //   Dummycate(id: 11, name: "Dana", gmbr: "assets/image/dana.png"),
    //   Dummycate(id: 12, name: "Gopay", gmbr: "assets/image/gopay.png"),
    //   Dummycate(id: 13, name: "Linkaja", gmbr: "assets/image/LinkAja.png"),
    //   Dummycate(id: 14, name: "Ovo", gmbr: "assets/image/ovo.png")
    // ]),
  ];

  void togglePanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List title = ["Telkomsel", "Tri", "Byu"];
    List nominal = ["100000", "200000", "1000000"];
    List total = ["101000", "201000", "1001000"];
    List dompetDigital = ["Gopay", "Mycuan Saldo", "Dana"];
    List statusTransaksi = ["Belum Bayar", "Berhasil", "Dibatalkan"];

    late Color iscolor;
    if (statusTransaksi == "Belum Bayar") {
      iscolor = Colors.yellow;
    } else if (statusTransaksi == "Berhasil") {
      iscolor = Colors.green;
    } else {
      iscolor = Colors.red;
    }

    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Riwayat Transaksi",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        controller: _panelController,
        maxHeight: heightt * 0.5,
        minHeight: heightt * 0,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        panelBuilder: (controller) {
          return ListView(
            controller: controller,
            children: [
              GestureDetector(
                onTap: () {
                  togglePanel();
                },
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 10,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: heightt * 16 / 800,
              ),
              ListTile(
                leading: Text(
                  "Filter",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                trailing: InkWell(
                  child: Text(
                    "RESET",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color.fromRGBO(13, 64, 198, 1)),
                  ),
                ),
              ),
              SizedBox(
                height: heightt * 16 / 800,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: widthh * 16 / 360, right: widthh * 16 / 360),
                child: Column(children: <Widget>[
                  for (var i = 0; i < prod.length; i++)
                    status == ""
                        ? Container(
                            child: Column(
                              children: [
                                Align(
                                  child: Text(prod[i].name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  alignment: Alignment.topLeft,
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: 50,
                                      crossAxisSpacing: size.width * .0444,
                                      mainAxisSpacing: size.height * .02,
                                    ),
                                    itemCount: prod[i].pro.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           DetailProduct(
                                              //             code: prod[i].pro[index].id,
                                              //           )),
                                              // );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors
                                                          .black38, // Set border color
                                                      width: 1)),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    bottom: 10,
                                                    top: 10),
                                                child: Text(
                                                    prod[i].pro[index].name,
                                                    style: TextStyle(
                                                      color: Color(0xff5C5D61),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container()
                  // : status == prod[i].name
                  //     ? Container(
                  //         child: Column(
                  //           children: [
                  //             Align(
                  //               child: Text.rich(
                  //                   textAlign: TextAlign.left,
                  //                   TextSpan(
                  //                       text: prod[i].name,
                  //                       style: TextStyle(
                  //                         color: Colors.black,
                  //                         fontWeight: FontWeight.w600,
                  //                         fontSize: 16,
                  //                       ))),
                  //               alignment: Alignment.topLeft,
                  //             ),
                  //             SizedBox(
                  //               height: size.height * .01,
                  //             ),
                  //             GridView.builder(
                  //               shrinkWrap: true,
                  //               gridDelegate:
                  //                   SliverGridDelegateWithFixedCrossAxisCount(
                  //                 crossAxisCount: 4,
                  //                 crossAxisSpacing: size.width * .0444,
                  //                 mainAxisSpacing: size.height * .02,
                  //               ),
                  //               itemCount: prod[i].pro.length,
                  //               itemBuilder:
                  //                   (BuildContext context, int index) {
                  //                 return RawMaterialButton(
                  //                   onPressed: () {
                  //                     // Navigator.push(
                  //                     //   context,
                  //                     //   MaterialPageRoute(
                  //                     //       builder: (context) =>
                  //                     //           DetailProduct(
                  //                     //             code: prod[i]
                  //                     //                 .pro[index]
                  //                     //                 .id,
                  //                     //           )),
                  //                     // );
                  //                   },
                  //                   child: Container(
                  //                     decoration: BoxDecoration(
                  //                         borderRadius: BorderRadius.circular(20),
                  //                         border: Border.all(
                  //                             color:
                  //                                 Colors.black38, // Set border color
                  //                             width: 1)),
                  //                     child: Padding(
                  //                       padding: EdgeInsets.only(
                  //                           left: size.width * .044,
                  //                           right: size.width * .044,
                  //                           bottom: size.height * .00625,
                  //                           top: size.height * .00625
                  //                           ),
                  //                       child: Text.rich(
                  //                           textAlign: TextAlign.left,
                  //                           TextSpan(
                  //                               text: prod[i].pro[index].name,
                  //                               style: GoogleFonts.inter(
                  //                                  color: Color(0xff5C5D61),
                  //                                 fontWeight: FontWeight.w500,
                  //                                 fontSize: 16,
                  //                               )
                  //                               )),
                  //                     ),
                  //                   ),
                  //                 );
                  //               },
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     : Container()
                ]),
              ),
            ],
          );
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                right: size.width * .0444, left: size.width * .044),
            child: Consumer<RiwayatProvider>(
              builder: (context, provider, _) {
                switch (provider.myState) {
                  case MyState.loading:
                    return Center(child: CircularProgressIndicator());
                  case MyState.loaded:
                    if (provider.riwayat!.data!.isEmpty) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: widthh * 63 / 360, left: widthh * 56 / 360),
                        child: Column(
                          children: [
                            SizedBox(
                              height: heightt * 168 / 800,
                            ),
                            Image.asset(
                              "assets/icon/amico2.png",
                              width: widthh * 200 / 360,
                              height: heightt * 200 / 800,
                            ),
                            SizedBox(
                              height: heightt * 16 / 800,
                            ),
                            Text(
                              'Tidak ada Histori Transaksi',
                              style: blackTextStyle.copyWith(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: heightt * 8 / 800,
                            ),
                            Text(
                              'Silahkan Melakukan Transaksi Terlebih Dahulu',
                              style: dengerTextStyle.copyWith(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: heightt * 100 / 800,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          SizedBox(
                            height: size.height * .02,
                          ),
                          SingleChildScrollView(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: size.width * .044),
                                  child: InkWell(
                                    child: Container(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/icon/sort.png")),
                                    onTap: () {
                                      togglePanel();
                                    },
                                  ),
                                ),
                                for (int i = 0; i < prods.length; i++)
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          status == prods[i].name
                                              ? status = ""
                                              : status = prods[i].name;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                    color: Colors
                                                        .black38, // Set border color
                                                    width: 1)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: size.width * .044,
                                                  right: size.width * .044,
                                                  bottom: size.height * .00625,
                                                  top: size.height * .00625),
                                              child: Text.rich(
                                                  textAlign: TextAlign.left,
                                                  TextSpan(
                                                      text: prods[i].name,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff5C5D61),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                      ))),
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * .044,
                                          ),
                                        ],
                                      )),
                              ],
                            ),
                            scrollDirection: Axis.horizontal,
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          Container(
                            height: heightt * 600 / 800,
                            width: widthh,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: heightt * 16 / 800),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(16),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    leading: Image.asset(
                                      "assets/icon/c.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                    title: Text(
                                      provider.riwayat!.data![index]
                                              .productName! +
                                          " " +
                                          provider.riwayat!.data![index]
                                              .productPrice
                                              .toString(),
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    subtitle: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Melalui MyCuan Saldo",
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          DateFormat('EEEE, dd MMMM yyyy', 'id')
                                              .format(DateTime.parse(provider
                                                  .riwayat!
                                                  .data![index]
                                                  .transactionDate
                                                  .toString()))
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    trailing: Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Rp " +
                                                provider.riwayat!.data![index]
                                                    .totalPrice
                                                    .toString(),
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Berhasil",
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: statusTransaksi[index] ==
                                                        "Berhasil"
                                                    ? Colors.green
                                                    : statusTransaksi[index] ==
                                                            "Dibatalkan"
                                                        ? Colors.red
                                                        : Colors.yellow),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  DetailRiwayat(
                                                    dompetDigital:
                                                        "MyCuan Saldo",
                                                    nominal: provider
                                                        .riwayat!
                                                        .data![index]
                                                        .productPrice
                                                        .toString(),
                                                    statusTransaksi: "Berhasil",
                                                    title: provider
                                                        .riwayat!
                                                        .data![index]
                                                        .productName
                                                        .toString(),
                                                    total: provider.riwayat!
                                                        .data![index].totalPrice
                                                        .toString(),
                                                  ))));
                                    },
                                  ),
                                );
                              },
                              itemCount: provider.riwayat!.data!.length,
                            ),
                          )
                          // Column(
                          //   children: <Widget>[
                          //     for (var i = 0; i < prod.length; i++)
                          //       status == ""
                          //           ? Container(
                          //               child: Column(
                          //                 children: [
                          //                   Align(
                          //                     child: Text.rich(
                          //                         textAlign: TextAlign.left,
                          //                         TextSpan(
                          //                             text: prod[i].name,
                          //                             style: TextStyle(
                          //                               color: Colors.black,
                          //                               fontWeight: FontWeight.w600,
                          //                               fontSize: 16,
                          //                             ))),
                          //                     alignment: Alignment.topLeft,
                          //                   ),
                          //                   SizedBox(
                          //                     height: size.height * .01,
                          //                   ),
                          //                   GridView.builder(
                          //                     shrinkWrap: true,
                          //                     gridDelegate:
                          //                         SliverGridDelegateWithFixedCrossAxisCount(
                          //                       crossAxisCount: 4,
                          //                       crossAxisSpacing: size.width * .0444,
                          //                       mainAxisSpacing: size.height * .02,
                          //                     ),
                          //                     itemCount: prod[i].pro.length,
                          //                     itemBuilder:
                          //                         (BuildContext context, int index) {
                          //                       return RawMaterialButton(
                          //                         onPressed: () {
                          //                           Navigator.push(
                          //                             context,
                          //                             MaterialPageRoute(
                          //                                 builder: (context) =>
                          //                                     DetailProduct(
                          //                                       code: prod[i].pro[index].id,
                          //                                     )),
                          //                           );
                          //                         },
                          //                         child: Container(
                          //                           width: size.width * .2111,
                          //                           child: Column(
                          //                             children: [
                          //                               SizedBox(
                          //                                 height: size.height * .01375,
                          //                               ),
                          //                               Padding(
                          //                                 padding: EdgeInsets.only(
                          //                                     left: size.width * .0638,
                          //                                     right: size.width * .0638),
                          //                                 child: SizedBox(
                          //                                   height: size.height * .0375,
                          //                                   width: size.width * .08333,
                          //                                   child: Image.asset(
                          //                                       prod[i].pro[index].gmbr),
                          //                                 ),
                          //                               ),
                          //                               SizedBox(
                          //                                 height: size.height * .005,
                          //                               ),
                          //                               Text.rich(
                          //                                   textAlign: TextAlign.center,
                          //                                   TextSpan(
                          //                                       text:
                          //                                           prod[i].pro[index].name,
                          //                                       style: TextStyle(
                          //                                         fontWeight:
                          //                                             FontWeight.w400,
                          //                                         fontSize: 10,
                          //                                       ))),
                          //                               SizedBox(
                          //                                 height: size.height * .01375,
                          //                               )
                          //                             ],
                          //                           ),
                          //                         ),
                          //                       );
                          //                     },
                          //                   ),
                          //                 ],
                          //               ),
                          //             )
                          //           : status == prod[i].name
                          //               ? Container(
                          //                   child: Column(
                          //                     children: [
                          //                       Align(
                          //                         child: Text.rich(
                          //                             textAlign: TextAlign.left,
                          //                             TextSpan(
                          //                                 text: prod[i].name,
                          //                                 style: TextStyle(
                          //                                   color: Colors.black,
                          //                                   fontWeight: FontWeight.w600,
                          //                                   fontSize: 16,
                          //                                 ))),
                          //                         alignment: Alignment.topLeft,
                          //                       ),
                          //                       SizedBox(
                          //                         height: size.height * .01,
                          //                       ),
                          //                       GridView.builder(
                          //                         shrinkWrap: true,
                          //                         gridDelegate:
                          //                             SliverGridDelegateWithFixedCrossAxisCount(
                          //                           crossAxisCount: 4,
                          //                           crossAxisSpacing: size.width * .0444,
                          //                           mainAxisSpacing: size.height * .02,
                          //                         ),
                          //                         itemCount: prod[i].pro.length,
                          //                         itemBuilder:
                          //                             (BuildContext context, int index) {
                          //                           return RawMaterialButton(
                          //                             onPressed: () {
                          //                               Navigator.push(
                          //                                 context,
                          //                                 MaterialPageRoute(
                          //                                     builder: (context) =>
                          //                                         DetailProduct(
                          //                                           code: prod[i]
                          //                                               .pro[index]
                          //                                               .id,
                          //                                         )),
                          //                               );
                          //                             },
                          //                             child: Container(
                          //                               width: size.width * .2111,
                          //                               child: Column(
                          //                                 children: [
                          //                                   SizedBox(
                          //                                     height: size.height * .01375,
                          //                                   ),
                          //                                   Padding(
                          //                                     padding: EdgeInsets.only(
                          //                                         left: size.width * .0638,
                          //                                         right:
                          //                                             size.width * .0638),
                          //                                     child: SizedBox(
                          //                                       height: size.height * .0375,
                          //                                       width: size.width * .08333,
                          //                                       child: Image.asset(prod[i]
                          //                                           .pro[index]
                          //                                           .gmbr),
                          //                                     ),
                          //                                   ),
                          //                                   SizedBox(
                          //                                     height: size.height * .005,
                          //                                   ),
                          //                                   Text.rich(
                          //                                       textAlign: TextAlign.center,
                          //                                       TextSpan(
                          //                                           text: prod[i]
                          //                                               .pro[index]
                          //                                               .name,
                          //                                           style: TextStyle(
                          //                                             fontWeight:
                          //                                                 FontWeight.w400,
                          //                                             fontSize: 10,
                          //                                           ))),
                          //                                   SizedBox(
                          //                                     height: size.height * .01375,
                          //                                   )
                          //                                 ],
                          //                               ),
                          //                             ),
                          //                           );
                          //                         },
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 )
                          //               : Container()
                          //   ],
                          // ),
                        ],
                      );
                    }
                  case MyState.failed:
                    return CircularProgressIndicator();

                  default:
                    return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
