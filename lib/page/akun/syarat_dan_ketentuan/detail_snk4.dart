
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/box_artikel.dart';
import 'package:ppodb_2/page/widgets/box_search.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class DetailSnk4 extends StatefulWidget {
  const DetailSnk4({super.key});

  @override
  State<DetailSnk4> createState() => _DetailSnk4State();
}

class _DetailSnk4State extends State<DetailSnk4> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "Penggunaan Akses",
"1. Anda setuju dan mengetahui bahwa setiap penggunaan Layanan dan/atau akses ke Site dan informasi, data atau komunikasi dengan menggunakan Username dan Password anda akan dianggap, sebagai: (a) akses terhadap Platform dan/atau penggunaan Layanan oleh Anda.",
"2. Dengan ini Anda setuju untuk tunduk pada akses Platform dan/atau penggunaan Layanan",
"3. Anda setuju bahwa kami berhak (tetapi tidak berkewajiban) untuk berpegangan dan menganggap bahwa penggunaan atas nama Username dan/atau Password Anda adalah dilakukan oleh Anda sendiri (sepanjang tidak ada laporan pemakaian tidak sah sebelumnya atas akun Anda yang telah terbukti) ",
"4. Anda selanjutnya setuju dan mengakui bahwa Anda terikat dan bertanggung jawab sepenuhnya mengganti kerugian yang disebabkan oleh setiap penggunaan Layanan dan/atau akses ke Platform atas nama Username dan Password Anda.",

"Pembuatan Password",
"1. Password terdiri dari minimal 6 karakter.",
"2. Disarankan menggunakan huruf dan angka.",
"3. Pengguna dihimbau untuk tidak memberikan informasi Password kepada orang lain.",
"4. Pengguna yang kehilangan password bisa mengajukan Password pada halaman profil dan lakukan reset password",

"Laporan Kehilangan",
"1. Pengguna yang kehilangan HP / akun MyCuan bisa menghubungi kami melalui chat untuk menonaktifkan akun MyCuan.",
"2. MyCuan tidak bertanggung jawab atas transaksi yang telah terjadi sebelum pelaporan dilakukan.",

"MyCuan tidak akan menyebarkan informasi pengguna (email & nomor HP ) kepada pihak manapun."











    ];
    int jumlah = var1.length;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Privasi dan Keamanan",
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
                    SizedBox(height: heightt*24/800,),
                     Text(var1[0].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
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
                      SizedBox(height: heightt*24/800,),
                     Text(var1[5].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                     Text(var1[6].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    Text(var1[7].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    
                    Text(var1[8].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    
                    Text(var1[9].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: heightt*24/800,),
                     Text(var1[10].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                    Text(var1[11].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    Text(var1[12].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                      SizedBox(height: heightt*24/800,),
                       Text(var1[13].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: heightt*40/800,),
                    
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