import 'package:flutter/material.dart';
import 'package:ppodb_2/page/transaction/categoryhome.dart';
import 'package:ppodb_2/page/transaction/detail_product.dart';
import 'package:ppodb_2/page/transaction/paketdata.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Perocbaan"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailProduct()));
                },
                child: Text("kita pergi ke pulsa")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Paketdata()));
                },
                child: Text("kita pergi ke paketdata")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryProduct()));
                },
                child: Text("Kategori"))
          ],
        ),
      ),
    );
  }
}
