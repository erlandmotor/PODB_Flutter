import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ppodb_2/models/product/product_data_model.dart';
import 'package:ppodb_2/models/product/product_detail.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/page/transaction/pembayaran_telekomunikasi.dart';
import 'package:ppodb_2/page/widgets/checkstatus.dart';
import 'package:ppodb_2/service/providers/product/product_list_provider.dart';
import 'package:provider/provider.dart';

import '../../models/dummymodel.dart';

class Detail_telkomwithproviders extends StatefulWidget {
  int type;
  String nomor;

  Detail_telkomwithproviders(
      {super.key, required this.type, required this.nomor});

  @override
  State<Detail_telkomwithproviders> createState() =>
      _Detail_telkomwithprovidersState();
}

class _Detail_telkomwithprovidersState
    extends State<Detail_telkomwithproviders> {
  late Productda product;

  String status = "";
  late int harga;
  TextEditingController bambang = TextEditingController();
  @override
  Widget build(BuildContext context) {
    product = Provider.of<ProductListProviders>(context).isicategory;
    final isloading = Provider.of<ProductListProviders>(context).state ==
        Productstate.loading;
    final isError =
        Provider.of<ProductListProviders>(context).state == Productstate.error;

    var size = MediaQuery.of(context).size;
    bambang.text = widget.nomor;
    return isloading
        ? Scaffold(
            body: Center(
            child: CircularProgressIndicator(),
          ))
        : isError || product == null
            ? Scaffold(
                backgroundColor: Colors.white,
                body: Padding(
                  padding: EdgeInsets.only(
                      right: size.width * .044, left: size.width * .044),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .25,
                      ),
                      SizedBox(
                        width: size.width * .9138,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/image/Penasaran 2.png",
                              height: size.height * .3,
                              width: size.width * .66666,
                            ),
                            const Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                    text:
                                        "Maaf, Nomor yang Anda Cari\nBelum Tersedia Untuk Sekarang!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors.black))),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            const Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                    text:
                                        "Kamu bisa memeriksa ulang nomormu lagi\n atau bisa mencoba nomor lain!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xff5C5D61)))),
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
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff0D40C6),
                                      shape: const StadiumBorder()),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text.rich(
                                    TextSpan(
                                      text: "Kembali",
                                    ),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ))),
                    ],
                  ),
                ),
              )
            : Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.white,
                appBar: AppBar(
                  title: Text(
                    widget.type == 7 ? "Nominal Pulsa" : "Paket Data",
                    selectionColor: const Color(0xff5C5D61),
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
                            Container(
                              color: Colors.white,
                            ),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      product.data!.image.toString(),
                                      width: size.width * .024,
                                      height: size.height * .024,
                                    )),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.cancel)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
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
                                  text: product.data!.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5D61),
                                    fontSize: 12,
                                  ))),
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: checkvalid(bambang.text)
                              ? Container()
                              : Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                      text: widget.type == 7
                                          ? "Nominal Pulsa"
                                          : "List Paket",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ))),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        widget.type == 7
                            ? Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: size.width * .0444,
                                          mainAxisSpacing: size.height * .02,
                                          mainAxisExtent: 100),
                                  itemBuilder: (context, index) {
                                    return RawMaterialButton(
                                        onPressed: () {
                                          final DummyTransTelekom kiriman =
                                              DummyTransTelekom(
                                                  biayaadmin: 0,
                                                  harga: product
                                                          .data!
                                                          .products![index]
                                                          .price! -
                                                      product
                                                          .data!
                                                          .products![index]
                                                          .discount!,
                                                  nama: status,
                                                  nomor:
                                                      int.parse(bambang.text),
                                                  type: widget.type);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PembayranTelekScreen(
                                                      gambar:
                                                          product.data!.image,
                                                      provider:
                                                          product.data!.name,
                                                      tipe: product.data!
                                                          .products![index].id,
                                                      trans: kiriman,
                                                    )),
                                          );
                                        },
                                        child: Container(
                                            height: size.height * .135,
                                            width: size.width * .4333,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                  color: Colors
                                                      .black38, // Set border color
                                                  width: 1.0),
                                              color: Colors.white,
                                            ),
                                            child: Column(children: [
                                              Container(
                                                height: size.height * .075,
                                                width: size.width * .433,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                        product
                                                                    .data!
                                                                    .products![
                                                                        index]
                                                                    .isPromoActive ==
                                                                true
                                                            ? "assets/image/Promo_Rounded.png"
                                                            : product
                                                                        .data!
                                                                        .products![
                                                                            index]
                                                                        .stock !=
                                                                    0
                                                                ? "assets/image/Normal_Rounded.png"
                                                                : "assets/image/Habis_Rounded v2.png",
                                                      ),
                                                      fit: BoxFit.fill),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * .03636,
                                                    top: size.height * .01,
                                                    bottom: size.height * .01,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text.rich(
                                                        textAlign:
                                                            TextAlign.left,
                                                        TextSpan(
                                                            text: NumberFormat(
                                                                    '#,###,000')
                                                                .format(product
                                                                    .data!
                                                                    .products![
                                                                        index]
                                                                    .price!),
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white))),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * .015,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * .0333,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text.rich(TextSpan(
                                                        text:
                                                            "Bayar: ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(
                                                          product
                                                                  .data!
                                                                  .products![
                                                                      index]
                                                                  .price! -
                                                              product
                                                                  .data!
                                                                  .products![
                                                                      index]
                                                                  .discount!,
                                                        )}",
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14,
                                                        ))),
                                                  )),
                                            ])));
                                  },
                                  itemCount: product.data!.products!.length,
                                ),
                              )
                            : Expanded(
                                child: checkvalid(bambang.text)
                                    ? Container()
                                    : SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            for (var i = 0;
                                                i <
                                                    product
                                                        .data!.products!.length;
                                                i++)
                                              InkWell(
                                                onTap: () {
                                                  final DummyTransTelekom
                                                      kiriman =
                                                      DummyTransTelekom(
                                                          biayaadmin: 0,
                                                          harga: product
                                                              .data!
                                                              .products![i]
                                                              .price!,
                                                          nama: product
                                                              .data!
                                                              .products![i]
                                                              .name!,
                                                          nomor: int.parse(
                                                              bambang.text),
                                                          type: widget.type);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PembayranTelekScreen(
                                                              gambar: product
                                                                  .data!.image,
                                                              provider: product
                                                                  .data!.name,
                                                              tipe: product
                                                                  .data!
                                                                  .products![i]
                                                                  .id,
                                                              trans: kiriman,
                                                            )),
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height:
                                                            size.height * .03,
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            right: size.width *
                                                                .32777,
                                                          ),
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text.rich(
                                                                TextSpan(
                                                                    text: product
                                                                        .data!
                                                                        .products![
                                                                            i]
                                                                        .name),
                                                                style: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ))),
                                                      SizedBox(
                                                        height:
                                                            size.height * .01,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: size.width *
                                                                .5833,
                                                            color: Colors.white,
                                                            child: Text.rich(
                                                              TextSpan(
                                                                  text: product
                                                                      .data!
                                                                      .products![
                                                                          i]
                                                                      .description),
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 14),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: size
                                                                            .width *
                                                                        .0444),
                                                            child: Text.rich(
                                                              TextSpan(
                                                                  text: NumberFormat.currency(
                                                                          locale:
                                                                              'id',
                                                                          symbol:
                                                                              'Rp',
                                                                          decimalDigits:
                                                                              0)
                                                                      .format(product
                                                                          .data!
                                                                          .products![
                                                                              i]
                                                                          .price)),
                                                              style: const TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .fade,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 16,
                                                                  color: Color(
                                                                      0xff0D40C6)),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            size.height * .02,
                                                      ),
                                                      const Divider(
                                                        color:
                                                            Color(0xffD9DCE3),
                                                        thickness: 1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      )),
                        SizedBox(
                          height: size.height * .1,
                        ),
                      ],
                    ),
                  ]),
                ),
              );
  }
}
