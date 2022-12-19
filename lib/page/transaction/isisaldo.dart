import 'package:flutter/material.dart';
import 'package:ppodb_2/models/dummymodel.dart';
import 'package:ppodb_2/page/product/formisisaldo.dart';

class Isisaldo extends StatefulWidget {
  const Isisaldo({super.key});

  @override
  State<Isisaldo> createState() => _IsisaldoState();
}

class _IsisaldoState extends State<Isisaldo> {
  List<Dummymethod> pembayaran = [
    Dummymethod(id: 1, name: "DANA", gambar: "assets/image/dana.png"),
    Dummymethod(id: 2, name: "Gopay", gambar: "assets/image/gopay.png"),
    Dummymethod(id: 3, name: "OVO", gambar: "assets/image/ovo.png"),
    Dummymethod(id: 4, name: "LinkAja", gambar: "assets/image/LinkAja.png"),
    Dummymethod(id: 5, name: "Alfamart", gambar: "assets/image/alfa.png"),
    Dummymethod(id: 6, name: "Indomaret", gambar: "assets/image/indo.png")
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Isi Saldo",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * .02125,
            left: size.width * .0444,
            right: size.width * .0444),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                      text: "Pilih Metode Pembelian",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ))),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Isiformsaldo(metod: pembayaran[index])),
                      );
                    }),
                    leading: Image.asset(
                      pembayaran[index].gambar,
                      width: 24,
                      height: 24,
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.black,
                    ),
                    title: Text.rich(
                        textAlign: TextAlign.left,
                        TextSpan(
                            text: pembayaran[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ))),
                  );
                }),
                separatorBuilder: ((context, index) {
                  return const Divider();
                }),
                itemCount: pembayaran.length)
          ],
        ),
      ),
    );
  }
}
