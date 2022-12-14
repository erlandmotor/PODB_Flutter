
import 'package:flutter/material.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk1.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk2.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk3.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk4.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk5.dart';
import 'package:ppodb_2/page/akun/syarat_dan_ketentuan/detail_snk6.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: widthh*16/360,left: widthh*16/360),
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
                    "assets/icon/snk1.png",
                    )),
                  ),
                ),onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk1())));
                },
                ),              
              ),
              Padding(
                padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                child: InkWell(
                    child: Container(
                  width: widthh * 328 / 360,
                  height: heightt * 175 / 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                    "assets/icon/snk2.png",
                    )),
                  ),
                ),onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk2())));
                },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                child: InkWell(
                    child: Container(
                  width: widthh * 328 / 360,
                  height: heightt * 175 / 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                    "assets/icon/snk3.png",
                    )),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk3())));
                },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                child: InkWell(
                    child: Container(
                  width: widthh * 328 / 360,
                  height: heightt * 175 / 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                    "assets/icon/snk4.png",
                    )),
                  ),
                ),onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk4())));
                },),
              ),
              Padding(
                padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                child: InkWell(
                    child: Container(
                  width: widthh * 328 / 360,
                  height: heightt * 175 / 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                    "assets/icon/snk5.png",
                    )),
                  ),
                ),
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk5())));
                },),
              ),
              Padding(
                padding: EdgeInsets.only(top: heightt*10/800,bottom: heightt*10/800,),
                child: InkWell(
                    child: Container(
                  width: widthh * 328 / 360,
                  height: heightt * 175 / 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                    "assets/icon/snk6.png",
                    )),
                  ),
                ),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailSnk6())));
                },),
              ),
          ],
            )
        ),
      ),
    );
  }
}