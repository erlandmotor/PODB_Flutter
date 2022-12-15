import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
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
  late List<DataProduct> product;
  String status = "";
  late int harga;
  TextEditingController bambang = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isloading = Provider.of<ProductListProviders>(context).state ==
        Productstate.loading;
    final isError =
        Provider.of<ProductListProviders>(context).state == Productstate.error;
    product = Provider.of<ProductListProviders>(context).isicategory;
    var size = MediaQuery.of(context).size;
    bambang.text = widget.nomor;
    return isloading
        ? Scaffold(
            body: Center(
            child: CircularProgressIndicator(),
          ))
        : isError
            ? Scaffold(
                body: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text("Data tidak ditemukan"),
                    )),
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
                                      product[0].image,
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
                                  text: product[0].name,
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
                                                  harga: product[0]
                                                          .products[index]
                                                          .price -
                                                      product[0]
                                                          .products[index]
                                                          .discount,
                                                  nama: status,
                                                  nomor:
                                                      int.parse(bambang.text),
                                                  type: widget.type);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PembayranTelekScreen(
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
                                              color: Colors.white,
                                            ),
                                            child: Column(children: [
                                              Container(
                                                height: size.height * .075,
                                                width: size.width * .433,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                        product[0]
                                                                    .products[
                                                                        index]
                                                                    .isPromoActive ==
                                                                true
                                                            ? "assets/image/Promo_Rounded.png"
                                                            : product[0]
                                                                        .products[
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
                                                            text: product[0]
                                                                .products[index]
                                                                .name,
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
                                                          product[0]
                                                                  .products[
                                                                      index]
                                                                  .price -
                                                              product[0]
                                                                  .products[
                                                                      index]
                                                                  .discount,
                                                        )}",
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14,
                                                        ))),
                                                  )),
                                            ])));
                                  },
                                  itemCount: product[0].products.length,
                                ),
                              )
                            : Expanded(
                                child: checkvalid(bambang.text)
                                    ? Container()
                                    : SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            for (var i = 0;
                                                i < product[0].products.length;
                                                i++)
                                              InkWell(
                                                onTap: () {
                                                  final DummyTransTelekom
                                                      kiriman =
                                                      DummyTransTelekom(
                                                          biayaadmin: 0,
                                                          harga: product[0]
                                                              .products[i]
                                                              .price,
                                                          nama: product[0]
                                                              .products[i]
                                                              .name,
                                                          nomor: int.parse(
                                                              bambang.text),
                                                          type: widget.type);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PembayranTelekScreen(
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
                                                                    text: product[
                                                                            0]
                                                                        .products[
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
                                                                  text: product[
                                                                          0]
                                                                      .products[
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
                                                                      .format(product[
                                                                              0]
                                                                          .products[
                                                                              i]
                                                                          .price)),
                                                              style: const TextStyle(
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
