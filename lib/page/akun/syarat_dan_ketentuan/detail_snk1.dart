
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSnk1 extends StatefulWidget {
  const DetailSnk1({super.key});

  @override
  State<DetailSnk1> createState() => _DetailSnk1State();
}

class _DetailSnk1State extends State<DetailSnk1> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "MyCuan adalah platform layanan penyedia berbagai transaksi keuangan berbasis digital yang mudah dan praktis.",

"Produk-produk yang diberikan pada aplikasi ini berkaca pada kebutuhan masyarakat terhadap kepraktisan dunia digital.",

"Sehingga dapat dikatakan bahwa aplikasi ini sebagai pelayanan pembayaran baik itu pembayaran untuk kebutuhan pribadi maupun kewajiban mayarakat untuk membayar sebuah tagihan.",

"Beberapa pelayanan yang kami berikan untuk pengguna diantaranya adalah",
"1. Pembayaran berbagai tagihan",
"2. Penyediaan kebutuhan pribadi",
"3. Dapat mengirim uang ke aplikasi payment lainnya",
"4. Serta penyediaan voucher untuk pengguna",
"5. Pengisian saldo aplikasi myCuan dari aplikasi payment lainnya seperti DANA, Gopay, Linkaja dan lain-lain",

"Contoh produk yang aplikasi ini fasilitasi adalah pembayaran tagihan BPJS, tagihan Listik PLN, tagihan PDAM, serta kebutuhan pribadi seperti pembelian paket data, pulsa, voucher game dan lain-lain",




    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
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
                     SizedBox(height: heightt*24/800,),
                    Text(var1[9].toString(),
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