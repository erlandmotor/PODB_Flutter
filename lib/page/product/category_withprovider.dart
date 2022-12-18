import 'package:flutter/material.dart';
import 'package:ppodb_2/models/product/productcate.dart';
import 'package:ppodb_2/page/main_page/main_page.dart';
import 'package:ppodb_2/service/providers/product/productcate_provider.dart';
import 'package:provider/provider.dart';

import 'detail_product.dart';

class CategoryProductprovider extends StatefulWidget {
  const CategoryProductprovider({super.key});

  @override
  State<CategoryProductprovider> createState() =>
      _CategoryProductproviderState();
}

class _CategoryProductproviderState extends State<CategoryProductprovider> {
  String status = "";

  late List<Datacate> prod;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isloading =
        Provider.of<ProductcateProviders>(context).state == Catestate.loading;
    final isError =
        Provider.of<ProductcateProviders>(context).state == Catestate.error;
    prod = Provider.of<ProductcateProviders>(context).isicategory;
    var size = MediaQuery.of(context).size;
    return isloading || prod == []
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : isError
            ? Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  leading: const BackButton(
                    color: Colors.black,
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                backgroundColor: Colors.white,
                body: Padding(
                  padding: EdgeInsets.only(
                      right: size.width * .044, left: size.width * .044),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .2,
                      ),
                      SizedBox(
                        width: size.width * .9138,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/image/Server Error.png",
                              height: size.height * .3,
                              width: size.width * .66,
                            ),
                            const Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                    text:
                                        "Yah, Server MyCuan\nSedang Ganggunan!",
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
                                        "Maaf ya, kegiatan kamu jadi terganggu.\nKamu bisa coba lagi beberapa saat.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xff5C5D61)))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .205,
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
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainPage()),
                                        (route) => route.isFirst);
                                  },
                                  child: const Text.rich(
                                    TextSpan(
                                      text: "Coba Lagi",
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
                          scrollDirection: Axis.horizontal,
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
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
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
                                                    text: prod[i].name,
                                                    style: const TextStyle(
                                                      color: Color(0xff5C5D61),
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
                                            crossAxisSpacing:
                                                size.width * .0444,
                                            mainAxisSpacing: size.height * .02,
                                          ),
                                          itemCount: prod[i].productType.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return RawMaterialButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetailProduct(
                                                            code: prod[i]
                                                                .productType[
                                                                    index]
                                                                .id,
                                                          )),
                                                );
                                              },
                                              child: SizedBox(
                                                width: size.width * .2111,
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height:
                                                          size.height * .01375,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: size.width *
                                                              .0638,
                                                          right: size.width *
                                                              .0638),
                                                      child: SizedBox(
                                                        height:
                                                            size.height * .0375,
                                                        width:
                                                            size.width * .08333,
                                                        child: Image.network(
                                                            prod[i]
                                                                .productType[
                                                                    index]
                                                                .image),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          size.height * .005,
                                                    ),
                                                    Text.rich(
                                                        textAlign:
                                                            TextAlign.center,
                                                        TextSpan(
                                                            text: prod[i]
                                                                .productType[
                                                                    index]
                                                                .name,
                                                            style:
                                                                const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 10,
                                                            ))),
                                                    SizedBox(
                                                      height:
                                                          size.height * .01375,
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                crossAxisSpacing:
                                                    size.width * .0444,
                                                mainAxisSpacing:
                                                    size.height * .02,
                                              ),
                                              itemCount:
                                                  prod[i].productType.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return RawMaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DetailProduct(
                                                                code: prod[i]
                                                                    .productType[
                                                                        index]
                                                                    .id,
                                                              )),
                                                    );
                                                  },
                                                  child: SizedBox(
                                                    width: size.width * .2111,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: size.height *
                                                              .01375,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: size.width *
                                                                  .0638,
                                                              right:
                                                                  size.width *
                                                                      .0638),
                                                          child: SizedBox(
                                                            height:
                                                                size.height *
                                                                    .0375,
                                                            width: size.width *
                                                                .08333,
                                                            child: Image
                                                                .network(prod[i]
                                                                    .productType[
                                                                        index]
                                                                    .image),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: size.height *
                                                              .005,
                                                        ),
                                                        Text.rich(
                                                            textAlign: TextAlign
                                                                .center,
                                                            TextSpan(
                                                                text: prod[i]
                                                                    .productType[
                                                                        index]
                                                                    .name,
                                                                style:
                                                                    const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 10,
                                                                ))),
                                                        SizedBox(
                                                          height: size.height *
                                                              .01375,
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
