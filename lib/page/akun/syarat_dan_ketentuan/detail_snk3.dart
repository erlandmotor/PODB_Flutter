
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSnk3 extends StatefulWidget {
  const DetailSnk3({super.key});

  @override
  State<DetailSnk3> createState() => _DetailSnk3State();
}

class _DetailSnk3State extends State<DetailSnk3> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "MyCuan menyediakan berbagai macam pembayaran diantaranya adalah ",
"1. Pembayaran menggunakan saldo myCuan",
"2. Pembayaran menggunakan aplikasi payment DANA",
"3. Pembayaran menggunakan aplikasi payement Gopay",

"untuk proses pembayaran diaplikasi myCuan untuk saat ini baik menggunakan saldo myCuan maupun metode lainnya tidak dikenakan biaya admin. ",

"Pengisian Saldo",
"untuk pengisian saldo myCuan dapat dilakukan dengan cara",
"1. Memilih metode pembayaran seperti DANA, Gopay, LinkAja, OVO dan bahkan gerai alfamart atau indomart",
"2. menginputkan nomial top up",
"3. Tidak ada minimum atau maksimum top up",
"4. Kemudian akan diberikan Barcode scan untuk pengguna dapat melakukan scanning pada aplikais payment sesuai metode yang dipilih",
"5. Durasi atau batas waktu yang diberikan untuk melakukan scanning barcode adalah 1x24 jam.",








    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Pembayaran",
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
                      SizedBox(height: heightt*24/800,),
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
                     Text(var1[10].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    Text(var1[11].toString(),
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