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

class Detail_telekom extends StatefulWidget {
  int type;
  String nomor;

  Detail_telekom({super.key, required this.type, required this.nomor});

  @override
  State<Detail_telekom> createState() => _Detail_telekomState();
}

class _Detail_telekomState extends State<Detail_telekom> {
  List<Dummypaket> dummy = [
    Dummypaket(
        desc:
            "Langganan Disney+ Hotstar 1 bulan (Kuota Maxstream 3GB). Masa berlaku 30 hari. Jika kuota MAXstream habis pelanggan dapat membeli kuota tambahan. \n\nJika masa aktif paket ini belum berakhir, pembelian paket Disney+ Hotstar selanjutnya akan gagal dan tidak menambah masa aktif paket yang sudah ada.",
        harga: 22000,
        id: 1,
        name: "Paket Disney+ Hotstar\n(30 Hari)"),
    Dummypaket(
        desc:
            "Kuota 1,5GB untuk akses aplikasi Zoom. Langganan akun Zoom Pro berlaku untuk 3 hari. Akun Zoom Pro bisa melakukan hostmeeting lebih dari 40 menit dengan partisipan hingga 300 orang. Kuota internet Zoom dan akun Zoom Pro berlaku berlaku hingga pukul 23.59 pada hari terakhir masa aktif paket.",
        harga: 25000,
        id: 2,
        name: "Paket Zoom Pro 1.5GB\n(3 Hari)"),
    Dummypaket(
        desc: "Kuota MaxStream 12GB + Kuota Utama 3GB. Masa Berlaku 30 Hari.",
        harga: 50000,
        id: 3,
        name: "Paket Gigamax Basic 15GB"),
    Dummypaket(
        desc:
            "Kuota utama mulai 3.3 GB hingga 7GB + 1GB OMG! dengan masa berlaku 30 hari. (Kuota internet sesuai zona user, silahkan cek di *363*46#)",
        harga: 54000,
        id: 3,
        name: "Paket Internet Bulanan OMG! 55rb"),
    Dummypaket(
        desc:
            "Kuota Utama mulai 3.3GB hingga 7GB + 1GB OMG!. Bonus berlangganan Vidio. Masa berlaku 30 hari. Kuota internet sesuai zona user, silahkan cek di *363*46#",
        harga: 64000,
        id: 4,
        name: "[New] Paket Internet Bulanan OMG + Vidio 65K")
  ];
  List<ProductDummyModel> fafa = [
    ProductDummyModel(
        id: 1, name: "5.000", diskon: 2000, harga: 6000, status: "diskon"),
    ProductDummyModel(
        id: 2, name: "10.000", diskon: 0, harga: 10200, status: "tersedia"),
    ProductDummyModel(
        id: 3, name: "20.000", diskon: 0, harga: 22000, status: "tersedia"),
    ProductDummyModel(
        id: 4, name: "50.000", diskon: 0, harga: 51000, status: "tersedia"),
    ProductDummyModel(
        id: 5, name: "100.000", diskon: 2000, harga: 100000, status: "diskon"),
    ProductDummyModel(
        id: 5, name: "200.000", diskon: 0, harga: 200000, status: "habis"),
  ];
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

    return Scaffold(
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/image/telkomsel1.png",
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
                child: const Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(
                        text: "Telkomsel",
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                        harga: fafa[index].harga -
                                            fafa[index].diskon,
                                        nama: status,
                                        nomor: int.parse(bambang.text),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: fafa[index].name != status
                                        ? Border.all(
                                            color: Colors
                                                .black38, // Set border color
                                            width: 1.0)
                                        : Border.all(
                                            color:
                                                Colors.blue, // Set border color
                                            width: 3.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: [
                                    Container(
                                      height: size.height * .075,
                                      width: size.width * .433,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              fafa[index].status == "diskon"
                                                  ? "assets/image/Promo_Rounded.png"
                                                  : fafa[index].status ==
                                                          "tersedia"
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
                                          alignment: Alignment.centerLeft,
                                          child: Text.rich(
                                              textAlign: TextAlign.left,
                                              TextSpan(
                                                  text: fafa[index].name,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      color: Colors.white))),
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
                                          alignment: Alignment.centerLeft,
                                          child: Text.rich(TextSpan(
                                              text:
                                                  "Bayar: ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(fafa[index].harga - fafa[index].diskon)}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ))),
                                        )),
                                  ])));
                        },
                        itemCount: fafa.length,
                      ),
                    )
                  : Expanded(
                      child: checkvalid(bambang.text)
                          ? Container()
                          : SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  for (var i = 0; i < dummy.length; i++)
                                    InkWell(
                                      onTap: () {
                                        final DummyTransTelekom kiriman =
                                            DummyTransTelekom(
                                                biayaadmin: 0,
                                                harga: dummy[i].harga,
                                                nama: dummy[i].name,
                                                nomor: int.parse(bambang.text),
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
                                                BorderRadius.circular(10.0),
                                            border: status == dummy[i].name
                                                ? Border.all(
                                                    color: Colors
                                                        .blue, // Set border color
                                                    width: 1)
                                                : Border.all(
                                                    color: Colors
                                                        .white, // Set border color
                                                    width: 1)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: size.height * .03,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  right: size.width * .32777,
                                                ),
                                                child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text.rich(
                                                      TextSpan(
                                                          text: dummy[i].name),
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16),
                                                      textAlign: TextAlign.left,
                                                    ))),
                                            SizedBox(
                                              height: size.height * .01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: size.width * .5833,
                                                  color: Colors.white,
                                                  child: Text.rich(
                                                    TextSpan(
                                                        text: dummy[i].desc),
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right:
                                                          size.width * .0444),
                                                  child: Text.rich(
                                                    TextSpan(
                                                        text: NumberFormat
                                                                .currency(
                                                                    locale:
                                                                        'id',
                                                                    symbol:
                                                                        'Rp',
                                                                    decimalDigits:
                                                                        0)
                                                            .format(dummy[i]
                                                                .harga)),
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xff0D40C6)),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * .02,
                                            ),
                                            const Divider(
                                              color: Color(0xffD9DCE3),
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
