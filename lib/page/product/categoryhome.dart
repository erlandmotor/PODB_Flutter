import 'package:flutter/material.dart';
import 'package:ppodb_2/models/dummymodel.dart';

import 'detail_product.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  String status = "";

  List<Dummypro> prod = [
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Kategori",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: size.width * .0444, left: size.width * .044),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .02,
              ),
              SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    for (int i = 0; i < prod.length; i++)
                      InkWell(
                          onTap: () {
                            setState(() {
                              status == prod[i].name
                                  ? status = ""
                                  : status = prod[i].name;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    border: Border.all(
                                        color:
                                            Colors.black38, // Set border color
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
                                          text: prod[i].name,
                                          style: const TextStyle(
                                            color: Color(0xff5C5D61),
                                            fontWeight: FontWeight.w500,
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
              Column(
                children: <Widget>[
                  for (var i = 0; i < prod.length; i++)
                    status == ""
                        ? Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                    textAlign: TextAlign.left,
                                    TextSpan(
                                        text: prod[i].name,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ))),
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: size.width * .0444,
                                  mainAxisSpacing: size.height * .02,
                                ),
                                itemCount: prod[i].pro.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return RawMaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailProduct(
                                                  code: prod[i].pro[index].id,
                                                )),
                                      );
                                    },
                                    child: SizedBox(
                                      width: size.width * .2111,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: size.height * .01375,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * .0638,
                                                right: size.width * .0638),
                                            child: SizedBox(
                                              height: size.height * .0375,
                                              width: size.width * .08333,
                                              child: Image.asset(
                                                  prod[i].pro[index].gmbr),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * .005,
                                          ),
                                          Text.rich(
                                              textAlign: TextAlign.center,
                                              TextSpan(
                                                  text: prod[i].pro[index].name,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ))),
                                          SizedBox(
                                            height: size.height * .01375,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        : status == prod[i].name
                            ? Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text.rich(
                                        textAlign: TextAlign.left,
                                        TextSpan(
                                            text: prod[i].name,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ))),
                                  ),
                                  SizedBox(
                                    height: size.height * .01,
                                  ),
                                  GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: size.width * .0444,
                                      mainAxisSpacing: size.height * .02,
                                    ),
                                    itemCount: prod[i].pro.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return RawMaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailProduct(
                                                      code:
                                                          prod[i].pro[index].id,
                                                    )),
                                          );
                                        },
                                        child: SizedBox(
                                          width: size.width * .2111,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: size.height * .01375,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: size.width * .0638,
                                                    right: size.width * .0638),
                                                child: SizedBox(
                                                  height: size.height * .0375,
                                                  width: size.width * .08333,
                                                  child: Image.asset(
                                                      prod[i].pro[index].gmbr),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * .005,
                                              ),
                                              Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                      text: prod[i]
                                                          .pro[index]
                                                          .name,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 10,
                                                      ))),
                                              SizedBox(
                                                height: size.height * .01375,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Container()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
