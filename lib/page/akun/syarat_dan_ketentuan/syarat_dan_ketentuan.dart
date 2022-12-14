
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class SyaratKetentuan extends StatefulWidget {
  const SyaratKetentuan({super.key});

  @override
  State<SyaratKetentuan> createState() => _SyaratKetentuanState();
}

class _SyaratKetentuanState extends State<SyaratKetentuan> {
  @override
  Widget build(BuildContext context) {
     double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Syarat dan Ketentuan",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: widthh*16/360,left: widthh*16/360),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return  Container(
              child: Column(
              children: [
                  Padding(
                    padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                    child: InkWell(
                        child: Container(
                      width: widthh * 328 / 360,
                      height: heightt * 175 / 800,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                         snk[index],
                        )),
                      ),
                    )),
                  ),
              ],
          ),
            );
          },
          itemCount: snk.length,
          
        ),
      ),
    );
  }
}