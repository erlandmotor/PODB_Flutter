

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/box_detail_riwayat.dart';
import 'package:ppodb_2/page/widgets/button_costume.dart';
import 'package:ppodb_2/page/widgets/card_field_item_text.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class DetailRiwayat extends StatefulWidget {
  const DetailRiwayat({super.key,required this.dompetDigital,required this.nominal,required this.statusTransaksi,required this.title,required this.total});
  final String title;
  final String nominal;
  final String total;
  final String statusTransaksi;
  final String dompetDigital;

  @override
  State<DetailRiwayat> createState() => _DetailRiwayatState();
}

class _DetailRiwayatState extends State<DetailRiwayat> {
  @override
  Widget build(BuildContext context) {
     double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Riwayat Transaksi",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: widthh*16/360, right: widthh*16/360),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: heightt*16/800,),
                BoxDetailRiwayat(
                  child: ListTile(
                    title: Row(
                      children: [
                        Text("#1234567",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),),
                        SizedBox(width: 5,),
                        Image.asset( "assets/icon/copy.png",
                        height: 16,
                        width: 16,)
                      ],
                    ),
                    subtitle: Text("18 Desember 2022 (08:18 wib)",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.statusTransaksi,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: widget.statusTransaksi == "Berhasil"?Colors.green:widget.statusTransaksi == "Dibatalkan"?Colors.red:Colors.yellow
                    ),),
                      ],
                    ),
                  )),
                  SizedBox(height: heightt*24/800,),
                  Text("Rincian Pembayaran",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),),
                  BoxDetailRiwayat(
                    child: Column(
                      children: [
                        ListTile(
                          //contentPadding: EdgeInsets.only(left: widthh*16/360,right: widthh*16/360),
                          title:ListTile(                        
                            leading: Image.asset( "assets/icon/telkomsel.png",
                            height: 32,
                            width: 32,),
                            title: Text(widget.title +" "+widget.nominal, 
                            style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                           )),
                           subtitle: Text("089789879890",style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          
                        ),),                    
                          ) ,
                         subtitle: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CardFieldItemText(
                                label: "Harga", 
                                contentData: widget.nominal,
                                flexLeftRow: 25, 
                                flexRightRow: 10),
                                 SizedBox(height: heightt*16/800),
                                 CardFieldItemText(
                                label: "Biaya Admin", 
                                contentData: "Gratis!",
                                flexLeftRow: 25, 
                                flexRightRow: 10),
                                 SizedBox(height: heightt*16/800),
                                 Divider(
                                  color: secondaryColor,
                                  height: 2,thickness: 1,
                                 ),
                                 SizedBox(height: heightt*16/800),
                                  CardFieldItemText(
                                label: "Voucher ######", 
                                contentData: "-"+widget.nominal,
                                flexLeftRow: 25, 
                                flexRightRow: 10),
                                SizedBox(height: heightt*16/800),
                               
                                
                            ],
                          ),
                         ),
                        ),
                         Container(
                                  padding: EdgeInsets.only(top: 16,bottom: 16,left: 12,right: 12),
                                  height: heightt*58/800,
                                  
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                                  ),
                                  child: CardFieldItemText(
                                label: "Voucher ######", 
                                contentData: "-"+widget.nominal,
                                flexLeftRow: 25, 
                                flexRightRow: 10),
                                ),
                      ],
                    )),
                    SizedBox(height: heightt*64/800,),
                    ButtonCostume(
                      onClickedShare: () {
                        
                      }, 
                      onClickedUnduh: () {
                        
                      }, 
                      onClickedLagi: () {
                        
                      },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}