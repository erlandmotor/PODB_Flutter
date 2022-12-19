
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSnk6 extends StatefulWidget {
  const DetailSnk6({super.key});

  @override
  State<DetailSnk6> createState() => _DetailSnk6State();
}

class _DetailSnk6State extends State<DetailSnk6> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "Dalam menggunakan layanan MyCuan, Anda menyadari bahwa atas penggunaan fitur yang ada pada layanan LinkAja, maka Anda turut terikat dengan Syarat dan Ketentuan yang tercantum pada masing-masing fitur yang Anda gunakan.", 

"Anda dengan ini dianggap telah memahami bahwa apabila terdapat ketentuan tersebut yang bertentangan secara langsung dengan ketentuan yang tertuang pada Syarat dan Ketentuan Layanan MyCuan ini, maka ketentuan yang berlaku atas penggunaan fitur/layanan khusus tersebut adalah Syarat dan Ketentuan Layanan MyCuan ini akan tetap berlaku kepada Anda terhadap hal-hal yang telah diatur.", 

"Kami menerima dan menjalankan setiap instruksi Pengguna MyCuan sebagai instruksi yang sah berdasarkan penggunaan layanan MyCuan dan karenanya Kami tidak mempunyai kewajiban kepada Anda untuk menilai maupun membuktikan ketepatan maupun kelengkapan instruksi dimaksud dan oleh karena itu intruksi tersebut sah mengikat Anda, kecuali Anda dapat membuktikan sebaliknya.",

"Anda setuju untuk menerima informasi terkait dengan produk-produk maupun program marketing MyCuan sesuai dengan batas kewajaran yang ditetapkan untuk menerima atau tidak suatu penawaran produk atau program tertentu.",

"Syarat dan Ketentuan dengan Anda dan MyCuan diatur atas Hukum Indonesia. Apabila terdapat pelanggaran ketentuan, maka hal tersebut akan menjadi subjek yurisdiksi wilayah Indonesia.",





    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Ketentuan Umum",
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
              SizedBox(
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
                      fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: heightt*24/800,),
                     Text(var1[1].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: heightt*24/800,),
                     Text(var1[2].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: heightt*24/800,),
                     Text(var1[3].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: heightt*24/800,),
                     Text(var1[4].toString(),
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