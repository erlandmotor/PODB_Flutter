
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/home/background.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

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
                     title: Padding(                          
                       padding: const EdgeInsets.only(top: 6),
                       child: Column(
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
                         padding: const EdgeInsets.only(top: 7),
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
                      ),                              
                   )),
                    Boxkecil(                    
                   child: ListTile(                        
                     title: Padding(                          
                       padding: const EdgeInsets.only(top: 6),
                       child: Column(
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
                         padding: const EdgeInsets.only(top: 7),
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
                      ),                              
                   )),
              ],
            ),
          
             )
             
    );
  }
}