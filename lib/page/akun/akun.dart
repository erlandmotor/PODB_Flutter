
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/background.dart';
import 'package:ppodb_2/page/widgets/boxSaldo.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
   double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    return BackgroundAkun(
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding:  EdgeInsets.only(left: widthh*16/360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),                        
                        image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1661767329669-2ff46c34fffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",),)
                      ),
                    ),
                    SizedBox(width:widthh*20/360,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        
                         Padding(
                           padding:  EdgeInsets.only(top: heightt*13/946,),
                           child: Text("Anya Greadline",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: colorwhite
                            ),),
                         ),
                          Text("+62 8953 2377 3144",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: colorwhite
                          ),),
                         
                      ],
                    )
                   
                  ],
                ),
              ),
              
             Boxsaldo(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                 child: ListTile(          
                              
                                                        title: Row(
                                                           mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Padding(
                                                              padding:  EdgeInsets.only(right: 8),
                                                              child: Container(
                                                          height: 33,
                                                          width: 33,
                                                          decoration: BoxDecoration(
                                                              color: sideSukes,
                                                              borderRadius: BorderRadius.circular(400)
                                                          ),
                                                          child: IconButton(
                                                              onPressed: () {
                                                                
                                                              }, icon: Image.asset("assets/icon/atas.png",
                                                              height: 15,
                                                              width: 15,
                                                              color: colorSukses,
                                                              ),
                                                          )
                                                        ),
                                                            ),           
                                                            Column(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [

                                                            //     Text("Total Saldo",
                                                            //     style: GoogleFonts.inter(
                                                            //   color: Colors.black,
                                                            //   fontWeight: FontWeight.w500,
                                                            //   fontSize: 12
                                                            //     )
                                                            //     ),
                                                               
                                                              
                                                              SizedBox(width: 5,),
                                                            Text("Uang Masuk",
                                                            style: GoogleFonts.inter(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14
                                                            )
                                                            ),
                                                              Padding(
                                                              padding: const EdgeInsets.only(top: 5),
                                                              child: Text("Rp300.000",
                                                              style: GoogleFonts.inter(
                                                                color: warnaHarga,
                                                                fontWeight: FontWeight.w600,
                                                                fontSize: 18
                                                              )
                                                              ),
                                                            ),
                                                              ],
                                                            ),
                                                          ],
                                                        ), 
                                                       
                                                      ),
                               ),
                                Expanded(
                                 child: ListTile(          
                              
                                                        title: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Padding(
                                                              padding:  EdgeInsets.only(right: 8),
                                                              child: Container(
                                                          height: 33,
                                                          width: 33,
                                                          decoration: BoxDecoration(
                                                              color: sideError,
                                                              borderRadius: BorderRadius.circular(400)
                                                          ),
                                                          child: IconButton(
                                                              onPressed: () {
                                                                
                                                              }, icon: Image.asset("assets/icon/bawah.png",
                                                              height: 15,
                                                              width: 15,
                                                              color: colorError,
                                                              ),
                                                          )
                                                        ),
                                                            ),           
                                                            Column(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [

                                                            //     Text("Total Saldo",
                                                            //     style: GoogleFonts.inter(
                                                            //   color: Colors.black,
                                                            //   fontWeight: FontWeight.w500,
                                                            //   fontSize: 12
                                                            //     )
                                                            //     ),
                                                               
                                                              
                                                              SizedBox(width: 5,),
                                                            Text("Uang Keluar",
                                                            style: GoogleFonts.inter(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14
                                                            )
                                                            ),
                                                              Padding(
                                                              padding: const EdgeInsets.only(top: 5),
                                                              child: Text("Rp300.000",
                                                              style: GoogleFonts.inter(
                                                                color: warnaHarga,
                                                                fontWeight: FontWeight.w600,
                                                                fontSize: 18
                                                              )
                                                              ),
                                                            ),
                                                              ],
                                                            ),
                                                          ],
                                                        ), 
                                                       
                                                      ),
                               )
                              ],
                            ))
            ],
          ),
        ),
      ),
    );
  }
}