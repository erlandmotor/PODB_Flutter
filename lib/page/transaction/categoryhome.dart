import 'package:flutter/material.dart';
import 'package:ppodb_2/page/transaction/detail_product.dart';
import 'package:ppodb_2/page/transaction/paketdata.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Kategori",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding:
            EdgeInsets.only(right: size.width * .0444, left: size.width * .044),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .02,
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
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
                              text: "Telekomunikasi",
                              style: TextStyle(
                                color: Color(0xff5C5D61),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .044,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
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
                              text: "Tagihan",
                              style: TextStyle(
                                color: Color(0xff5C5D61),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .044,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
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
                              text: "Voucher",
                              style: TextStyle(
                                color: Color(0xff5C5D61),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .044,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Colors.black38, // Set border color
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
                              text: "Keuangan",
                              style: TextStyle(
                                color: Color(0xff5C5D61),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .044,
                  )
                ],
              ),
              scrollDirection: Axis.horizontal,
            ),
            SizedBox(
              height: size.height * .02,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Align(
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Telkomunikasi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ))),
                          alignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailProduct()));
                              }),
                              child: Container(
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
                                            "assets/image/Pulsa.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Pulsa",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Paketdata()));
                              }),
                              child: Container(
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
                                            "assets/image/Paket data.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Paket data",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/Indihome.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Indihome",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Align(
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Tagihan",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ))),
                          alignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/BPJS.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "BPJS",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/Tagihan listrik.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Listrik",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/Token listrik.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Token Listrik",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/PDAM.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "PDAM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Align(
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                  text: "Voucher",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ))),
                          alignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/Voucher game.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Voucher game",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .0222,
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
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
                                            "assets/image/Google Play.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * .005,
                                    ),
                                    Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                            text: "Google Play",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ))),
                                    SizedBox(
                                      height: size.height * .01375,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
