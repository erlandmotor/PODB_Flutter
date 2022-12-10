
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/box_artikel.dart';
import 'package:ppodb_2/page/widgets/box_search.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class DEtailFAQ extends StatefulWidget {
  const DEtailFAQ({super.key});

  @override
  State<DEtailFAQ> createState() => _DEtailFAQState();
}

class _DEtailFAQState extends State<DEtailFAQ> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "1. Top up ke berbagai dompet digital sekaligus lewat satu kali transaksi. Ada 5 tujuan e-wallet yang dapat Kakak pilih, DANA, OVO, GoPay, LinkAja, dan ShopeePay",
"2. Beli pulsa, paket data, dan token listrik hanya dengan satu aplikasi",
"3. Bayar tagihan BPJS, PDAM, dan listrik dengan mudah",
"4. Beli voucher game favorit kamu atau voucher google play",
"5. Refund jika ada kesalahan saat transfer ke MyCuan, seperti transfer tidak pakai kode unik",
"6. Cairkan saldo kamu yang sudah mencapai Rp10.000 ke atas dengan fitur Tarik Saldo",
"7. Pusat Bantuan yang siap sedia membantu Kakak selama 24 jam.",
    ];
    int jumlah = var1.length;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Topik",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: widthh*16/360,right: widthh*16/360),
          child: Column(
           
            children: [
              SizedBox(height:heightt *5/800,),
              Container(
                height: 800,
                width: widthh,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Terakhir di-update pada 25 November 2022",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                     Text("Fitur apa saja yang bisa dinikmati pada aplikasi MyCuan?",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: heightt*24/800,),
                     Text(var1[0].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[1].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[2].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[3].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[4].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[5].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[6].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: heightt*40/800,),
                     Boxartikel(
                      child: ListTile(
                        leading: Text("Apakah artikel ini membantu?",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: sideSukes,
                                          borderRadius:
                                              BorderRadius.circular(400)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/icon/jatas.png",
                                          height: 15,
                                          width: 15,
                                          color: colorSukses,
                                        ),
                                      )),
                             Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: sideError,
                                          borderRadius:
                                              BorderRadius.circular(400)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/icon/jbawah.png",
                                          height: 15,
                                          width: 15,
                                          color: colorError,
                                        ),
                                      )),
                          ],
                        ),
                      )),
                       Text("37 Orang terbantu dengan artikel ini.",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}