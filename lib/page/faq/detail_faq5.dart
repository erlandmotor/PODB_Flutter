
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/box_artikel.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class DEtailFAQ5 extends StatefulWidget {
  const DEtailFAQ5({super.key});

  @override
  State<DEtailFAQ5> createState() => _DEtailFAQ5State();
}

class _DEtailFAQ5State extends State<DEtailFAQ5> {
  @override
  Widget build(BuildContext context) {
    double heightt = MediaQuery.of(context).size.height;
    double widthh = MediaQuery.of(context).size.width;
    List var1 = [
      "Kamu pengguna listrik pascabayar dan belum sempat bayar tagihan?",

"Sekarang Kamu enggak perlu ribet pergi ke agen pembayaran untuk melunasi tagihan listrik. Pakai MyCuan, bayar listrik PLN prosesnya gampang dan cepat. Biayanya juga terjangkau.",

"Untuk Kamu yang mau bayar tagihan listrik pakai Saldo, berikut langkah-langkahnya:",

"1. Buka aplikasi MyCuan, lalu pilih menu Listrik di halaman beranda. ",
"2. Masukkan ID PELANGGAN, lanjutkan klik CEK TAGIHAN LISTRIK. ",
"3. Sistem akan menampilkan informasi identitas pemilik rekening listrik dan biaya yang harus dibayarkan. Jika sudah sesuai, klik LANJUT. ",
"4. Pilih BAYAR VIA SALDO. Pastikan Saldo cukup untuk melakukan transaksi. ",
"5. MyCuan akan segera mengecek dan memproses transaksi. ",
"6. Jika sudah selesai, bukti pembayaran akan ditampilkan dan dapat Kamu unduh langsung di aplikasi. Selain itu, MyCuan juga secara otomatis mengirim bukti pembayaran ke alamat email Kamu.",

    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
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
              SizedBox(
                height: 950,
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
                     Text("Bagaimana cara membayar tagihan listrik menggunakan saldo di aplikasi MyCuan?",
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
                     SizedBox(height: heightt*40/800,),
                     Boxartikel(
                      child: ListTile(
                        leading: Text("Apakah artikel ini membantu?",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),),
                        title: Padding(
                          padding:  EdgeInsets.only(right: widthh*5/360),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                        decoration: const BoxDecoration(
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