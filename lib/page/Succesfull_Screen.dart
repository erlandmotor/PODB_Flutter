import 'package:flutter/material.dart';
import 'package:ppodb_2/page/detail_product.dart';
import 'package:ppodb_2/page/product_screen.dart';

class SuccesPage extends StatefulWidget {
  const SuccesPage({super.key});

  @override
  State<SuccesPage> createState() => _SuccesPageState();
}

class _SuccesPageState extends State<SuccesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            EdgeInsets.only(right: size.width * .044, left: size.width * .044),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .2125,
            ),
            Container(
              width: size.width * .9138,
              height: size.height * .39,
              child: Image.asset("assets/image/Frame.png"),
            ),
            SizedBox(
              height: size.height * .1575,
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
                            backgroundColor: Color(0xff0D40C6),
                            shape: StadiumBorder()),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailProduct()));
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Transaksi lagi",
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    ))),
            SizedBox(
              height: size.height * .03625,
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
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homeScreen()));
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Kembali ke beranda",
                          ),
                          style: TextStyle(
                              color: Color(0xff0D40C6),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
