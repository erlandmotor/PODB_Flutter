
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/box_artikel.dart';
import 'package:ppodb_2/page/widgets/box_search.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class DetailSnk5 extends StatefulWidget {
  const DetailSnk5({super.key});

  @override
  State<DetailSnk5> createState() => _DetailSnk5State();
}

class _DetailSnk5State extends State<DetailSnk5> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "Untuk Transaksi dengan nomor Handphone, nomor pelanggan, nomor meter, dan nomor telepon tidak valid dan transaksi gagal pada pihak operator, sistem kami akan melakukan auto refund sesuai nominal pembayaran. Anda hanya bisa melakukan refund apabila hal tersebut disebabkan oleh:",

"Nomor Handphone, nomor pelanggan, nomor meter, dan nomor telepon tidak valid dan transaksi gagal pada pihak operator. Pembayaran semua jenis transaksi di Sepulsa yang tidak sesuai dengan total order.",

"Pengembalian dana (refund) GoPay",
"Pengembalian dana (refund) saldo GoPay akan di kembalikan ke saldo GoPay.",
"Jangka waktu pengembalian dana selambat-lambatnya dalam waktu 7 hari kerja dihitung sejak memperoleh persetujuan dari kami.",

"Pengembalian dana (refund) LinkAja",
"Pengembalian dana (refund) saldo LinkAja akan di kembalikan ke saldo LinkAja.", 
"Jangka waktu pengembalian dana selambat-lambatnya dalam waktu 7 hari kerja dihitung sejak memperoleh persetujuan dari kami.",

"Pengembalian dana (refund) ShopeePay",
"Pengembalian dana (refund) saldo ShopeePay akan di kembalikan ke saldo ShopeePay.",
"Jangka waktu pengembalian dana selambat-lambatnya dalam waktu 20 hari kerja dihitung sejak memperoleh persetujuan dari kami.",

"Pengembalian dana (refund) QRIS ShopeePay",
"Pengembalian dana (refund) QRIS ShopeePay akan di kembalikan ke rekening sumber dana saat bertransaksi di Sepulsa.",
"Jangka waktu pengembalian dana selambat-lambatnya dalam waktu 20 hari kerja dihitung sejak memperoleh persetujuan dari kami.",







    ];
    int jumlah = var1.length;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Ketentuan Refund",
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
                height: 900,
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
                      fontWeight: FontWeight.w600
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
                     SizedBox(height: heightt*24/800,),
                    Text(var1[8].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
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
                     SizedBox(height: heightt*24/800,),
                   Text(var1[11].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                    Text(var1[12].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                     Text(var1[13].toString(),
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                  //    Text(var1[14].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //    Text(var1[15].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //    Text(var1[16].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //    Text(var1[17].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //    Text(var1[18].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w600
                  //   ),),
                  //   Text(var1[19].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //   Text(var1[20].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //   Text(var1[21].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
                  //   Text(var1[22].toString(),
                  //   style: GoogleFonts.inter(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w400
                  //   ),),
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