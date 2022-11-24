
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/home/background.dart';
import 'package:ppodb_2/page/produk/pulsa.dart';
import 'package:ppodb_2/page/widgets/boxIconMenu.dart';
import 'package:ppodb_2/page/widgets/box_besar.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';
import 'package:ppodb_2/page/widgets/textIconMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Background(
        child:  
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Boxkecil(                    
                   child: ListTile(                        
                     title: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Total Saldo",
                         style: GoogleFonts.inter(
                           color: Colors.black,
                           fontWeight: FontWeight.w500,
                           fontSize: 12
                         )
                         ),
                          Padding(
                       padding: const EdgeInsets.only(top: 5),
                       child: Text("Rp. 15.000",
                       style: GoogleFonts.inter(
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 23
                       )
                       ),
                     ),
                     Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                     Text("Top Up",
                           style: GoogleFonts.inter(
                             color: Colors.black,
                             fontWeight: FontWeight.w500,
                             fontSize: 12
                           )
                           ),
                             SizedBox(width: 5,),
                           Container(
                             height: 25,
                             width: 25,
                             decoration: BoxDecoration(
                               color: primaryColor,
                               borderRadius: BorderRadius.circular(400)
                             ),
                             child: IconButton(
                               onPressed: () {
                                 
                               }, icon: Image.asset("assets/icon/panah_kanan.png"),
                             )
                           ),
                         
                         ],
                       ),
                       ],
                     ),                              
                   )),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 28,right: 28,bottom: 10,top: 15),
                       child: Boxbesar(
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: 15),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          // childAspectRatio: 5 ,
                          // crossAxisSpacing: 4,
                          // mainAxisSpacing: 4,
                        ),
                        itemCount: modulName.length,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              if(modulName[index] == "Pulsa"){
                               // Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "Paket Data"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "PDAM"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "Listrik"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "BPJS"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "Indihome"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "Voucher Game"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                              if(modulName[index] == "Lainnya"){
                              //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                              }
                            },
                            child: Column(
                              children: [
                                if(modulName[index]=="Pulsa")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="Paket Data")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="PDAM")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="Listrik")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="BPJS")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="Indihome")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="Voucher Game")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                                if(modulName[index]=="Lainnya")...[
                                  BoxIconModul(icon: iconModul[index]),
                                  TextIconModul(label: modulName[index].toString())
                                ],
                              ],
                            ),
                          );                              
                        },
                        
                        )),
                     ),
                   ),

                //  Container(
                //    child: Text("Promo",style: GoogleFonts.inter(
                //     fontSize: 14,
                //     fontWeight: FontWeight.w600
                //    ),),
                //  )
              ],
            ),
          
             )
             
    );
  }
}