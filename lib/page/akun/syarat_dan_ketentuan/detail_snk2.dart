
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSnk2 extends StatefulWidget {
  const DetailSnk2({super.key});

  @override
  State<DetailSnk2> createState() => _DetailSnk2State();
}

class _DetailSnk2State extends State<DetailSnk2> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "MyCuan memberikan beberapa produk sesuain kategori yang dibeirkan diantaranya adalah",

"1. Kategori Telekomunikasi",
"a. Isi Pulsa",
"b. Paket data ",
"c. Indihome",
"pada pengisian pulsa dan paket data Pastikan nomor yang anda input benar atau tidak dalam masa tenggang.",
"myCuan tidak bertanggung jawab atas kesalahan  kesalahan input nomor tujuan oleh pengguna.",
"MyCuan menyediakan berbagai macam provider pegisian pulsa untuk pengguna",
"Harga dapat berubah sewaktu-waktu tanpa pemberitahuan serta terdapat juga promo menarik bagi user",
"pada pengisian indihome Pelanggan menginput nomor telepon rumah atau nomor pelanggan Indihome.",

"2. Kategori Tagihan",
"a. Tagihan BPJS",
"Pembayaran PBJS dengan menginputkan nomor VA keluarga",
"Memilih periode pembayaran",
"b. Tagihan Listrik",
"Tagihan listrik dengan menginputkan nomor ID Pelanggan",
"c. Tagihan Token Listrik",
"Pembelian token listrik dengan menginputkan ID Pelanggan",
"Memilih token listrik yang dibutuhkan",
"d. Tagihan PDAM",
"Memilih wilayah rumah (provinsi dan kabupaten/ Kota)",
"Pembayaran tagihan PDAM dengan menginputkan nomor ID Pelanggan",

"3. Kategori Voucher",
"a. Voucher Game",
"b. Voucher Google Play",


"4. Kategori keuangan",
"produk kategori keuangan adalah produk pengiriman uang ke aplikasi payment lainnya.",
"Produk payment tersebut adalah pengiriman uang ke shopeepay, Gopay, OVO, DANA, dan LinkAja",
"Caranya dengan menginputkan nomor handphone sesuai aplikasi payment tersebut.",









    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Produk Kami",
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
                height: 970,
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
                      fontWeight: FontWeight.w600
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
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Text(var1[5].toString(),
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Text(var1[6].toString(),
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[7].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[8].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    
                    Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[9].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
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
                    Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[12].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[13].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                      Text(var1[14].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[15].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    Text(var1[16].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[17].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[18].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Text(var1[19].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[20].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[21].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     SizedBox(height: heightt*24/800,),
                    Text(var1[22].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                     Text(var1[23].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[24].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: heightt*24/800,),
                    Text(var1[25].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[26].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[27].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                      child: Text(var1[28].toString(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
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