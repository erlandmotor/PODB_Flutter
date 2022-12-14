import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/background.dart';
import 'package:ppodb_2/page/akun/edit_data_akun.dart';
import 'package:ppodb_2/page/akun/edit_password.dart';
import 'package:ppodb_2/page/faq/background.dart';
import 'package:ppodb_2/page/faq/detail_faq1.dart';
import 'package:ppodb_2/page/faq/detail_faq2.dart';
import 'package:ppodb_2/page/faq/detail_faq3.dart';
import 'package:ppodb_2/page/faq/detail_faq4.dart';
import 'package:ppodb_2/page/faq/detail_faq5.dart';
import 'package:ppodb_2/page/faq/detail_faq6.dart';
import 'package:ppodb_2/page/faq/detail_faq7.dart';
import 'package:ppodb_2/page/faq/detail_faq8.dart';
import 'package:ppodb_2/page/login_register/login_page.dart';
import 'package:ppodb_2/page/login_register/register1_page.dart';
import 'package:ppodb_2/page/widgets/alert.dart';

import 'package:ppodb_2/page/widgets/boxIconMenu.dart';
import 'package:ppodb_2/page/widgets/boxSaldo.dart';
import 'package:ppodb_2/page/widgets/box_besar.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';
import 'package:ppodb_2/page/widgets/box_search.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';
import 'package:ppodb_2/page/widgets/rating.dart';
import 'package:ppodb_2/page/widgets/textIconMenu.dart';
import 'package:ppodb_2/service/providers/profil/profil_provider.dart';
import 'package:provider/provider.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.only(bottom: 3, left: 3, right: 3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : offIndikartor,
          shape: BoxShape.circle),
    );
  });
}

class _FAQState extends State<FAQ> {
  late PageController _pageController;
  int activePage = 1;
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    Future.delayed(
      Duration.zero,
      () {
        final _provider = Provider.of<ProfilProvider>(context, listen: false);

        /// Fetch users data
        _provider.fetchProfil();
     
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
     final _namalengkapController = TextEditingController();
    String nama = "Agus Juniartha";
    return BackgroundFaq(
        child: SizedBox(
            height: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Consumer<ProfilProvider>(
                    builder: (context, provider, _) {
                      return Padding(
                     padding:  EdgeInsets.only(left: widthh*16/360,right: widthh*16/360),
                      child: Container(
                        height: heightt*71/800,
                        width: widthh*271/360,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Halo "+provider.profil!.data!.name.toString(),
                            style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),),
                            Text("ada yang bisa dibantu?",
                            style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            )),
                          ],
                        )),
                    );
                    },
                    
                  ),
                   Padding(
                   padding:  EdgeInsets.only(left: widthh*16/360,right: widthh*16/360),
                    child: Container(
                      height: heightt*45/800,
                      width: widthh*328/360,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kamu bisa cari dan baca topik yang ingin ditanyakan",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),),                          
                        ],
                      )),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       left: widthh * 16 / 360, right: widthh * 16 / 360),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Container(
                  //         height: heightt * 80 / 800,
                  //         width: widthh * 80 / 360,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(400),
                  //             image: DecorationImage(
                  //               image: NetworkImage(
                  //                 "https://plus.unsplash.com/premium_photo-1661767329669-2ff46c34fffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                  //               ),
                  //             )),
                  //       ),
                  //       SizedBox(
                  //         width: widthh * 20 / 360,
                  //       ),
                  //       Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Padding(
                  //             padding: EdgeInsets.only(
                  //               top: heightt * 13 / 800,
                  //             ),
                  //             child: Text(
                  //               "Anya Greadline",
                  //               style: GoogleFonts.inter(
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.w600,
                  //                   color: colorwhite),
                  //             ),
                  //           ),
                  //           Text(
                  //             "+62 8953 2377 3144",
                  //             style: GoogleFonts.inter(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.w400,
                  //                 color: colorwhite),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Boxsearch(
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _namalengkapController,
                          validator: (value) {
                            //final nameRegExp = new RegExp(r"^\s([A-Za-z]{1,}([.,] |[-']| ))+[A-Za-z]+.?\s$");
                            // if (value!.isEmpty) {
                            //   return "Harus diisi";
                            // } //else if (!nameRegExp.hasMatch(value)) {
                            // //   return 'Nama tidak boleh angka';
                            // // }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Coba cari cara isi pulsa",
                           //labelText: "Nama Lengkap",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all( heightt*12/800),
                              child: Image.asset("assets/icon/pembesar.png",
                              height: 10,
                              width: 10,),
                            ),
                            // suffixIcon: Padding(
                            //   padding: EdgeInsets.all( heightt*13/800),
                            //   child: Image.asset("assets/icon/edit.png",
                            //   height: 10,
                            //   width: 10,),
                            // ),
                          )),),
                
                 
                        Padding(
                           padding:  EdgeInsets.only(top: heightt*48/800,),
                          child: Container(
                             height: heightt * 350 / 800,
                            child: ListView(
                               shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                padding: EdgeInsets.all(2),
                              children: [
                                Container(
                                    width: widthh,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: widthh * 16 / 360,
                                                right: widthh * 16 / 360),
                                            child: Text(
                                              "Topik paling dicari",
                                              style: GoogleFonts.inter(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Fitur apa saja yang bisa dinikmati pada aplikasi MyCuan?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ())));
                                                  },
                                                ),
                                                ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Jam berapa MyCuan beroperasi?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ2())));
                                                  },
                                                ),
                                               
                                               ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Gimana cara beli pulsa lewat saldo?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ3())));
                                                  },
                                                ),
                                               ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Bagaimana solusi jika transaksi pulsa gagal?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ4())));
                                                  },
                                                ),
                                               ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Bagaimana cara membayar tagihan listrik menggunakan saldo di aplikasi MyCuan?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ5())));
                                                  },
                                                ),
                                                 ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Bagaimana jika transaksi berhasil, tapi tagihan listrik belum terbayarkan?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ6())));
                                                  },
                                                ),
                                                ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Apakah token listrik dapat dibeli menggunakan saldo?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    // Navigator.push(
                                                    //     context,
                                                    //     MaterialPageRoute(
                                                    //         builder: ((context) =>
                                                    //             DEtailFAQ7())));
                                                  },
                                                ),
                                                ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Bagaimana cara menghubungi customer service MyCuan?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ7())));
                                                  },
                                                ),
                            
                                                ListTile(
                                                  
                                                  title: Padding(
                                                   padding:  EdgeInsets.only(left: widthh*20/360),
                                                    child: Transform.translate(
                                                      offset: const Offset(-20, 0),
                                                      child:  Text(
                                                        "Apa yang harus saya lakukan jika riwayat transaksi hilang?",
                                                        style: GoogleFonts.inter(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400
                                                        )
                                                      ),
                                                    ),
                                                  ),
                                                
                                                  trailing: Transform.translate(
                                                    offset: const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin:
                                                                Alignment.centerLeft,
                                                            end:
                                                                Alignment.centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode: TileMode.mirror,
                                                          ).createShader(bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                DEtailFAQ8())));
                                                  },
                                                ),
                                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: widthh * 16 / 360,                                                   
                                                  top: heightt * 40 / 800),
                                              child: Text("Butuh Bantuan ?",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 20, fontWeight: FontWeight.w600)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: widthh * 16 / 360, right: widthh * 24 / 360),
                                              child: InkWell(
                                                  child: Container(
                                                width: widthh * 328 / 360,
                                                height: heightt * 140 / 800,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                    "assets/image/Hotline.png",
                                                  )),
                                                ),
                                              )),
                                            ),
                                            SizedBox(
                                              height: heightt * 30 / 800,
                                            )
                                              ],
                                            ),
                                          ),
                                        ])),
                              ],
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  
            ));
  }
}
