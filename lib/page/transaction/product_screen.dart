import 'package:flutter/material.dart';
import 'package:ppodb_2/page/transaction/detail_product.dart';

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
                child: Text("kita pergi ke pulsa"))
          ],
        ),
      ),
    );
  }
}
