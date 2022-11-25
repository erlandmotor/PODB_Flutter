
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/akun.dart';
import 'package:ppodb_2/page/faq/faq.dart';
import 'package:ppodb_2/page/home/background.dart';
import 'package:ppodb_2/page/produk/pulsa.dart';
import 'package:ppodb_2/page/riwayat/riwayat.dart';
import 'package:ppodb_2/page/widgets/botton_navigation_box.dart';
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
 late PageController _pageController;
 int activePage =1;
 @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  List<Widget> indicators(imagesLength,currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : offIndikartor,
          shape: BoxShape.circle),
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(         
      body: Background(
        child:  
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                       
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset("assets/icon/c.png",
                            height: 30,
                            ),
                          ),
                          Image.asset("assets/icon/MYCUAN.png",
                          height: 15,
                          ),
                      
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Image.asset("assets/icon/lonceng.png",
                            height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
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
                       child: Text("Rp. 0",
                       style: GoogleFonts.inter(
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 23
                       )
                       ),
                     ),
                     
                       ],
                     ), 
                     trailing: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                   
                           Container(
                             height: 33,
                             width: 33,
                             decoration: BoxDecoration(
                               color: primaryColor,
                               borderRadius: BorderRadius.circular(400)
                             ),
                             child: IconButton(
                               onPressed: () {
                                 
                               }, icon: Image.asset("assets/icon/Plus.png"),
                             )
                           ),
                             SizedBox(width: 5,),
                           Text("Top Up",
                           style: GoogleFonts.inter(
                             color: Colors.black,
                             fontWeight: FontWeight.w500,
                             fontSize: 12
                           )
                           ),
                           
                         ],
                       ),                           
                   )),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 28,right: 28,),
                       child: Boxbesar(
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: 2,),
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
                   Padding(
                     padding: const EdgeInsets.only(left: 40,top: 10),
                     child: Text("Promo",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                  )),
                   ),
                      Expanded(
                        child: PageView.builder(
                          itemCount: gambarPromo.length,
                          pageSnapping: true,
                          controller: _pageController,
                          onPageChanged: (page) {
                            setState(() {
                              activePage = page;
                            });
                          },
                          itemBuilder: (context, pagePosition) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20,top: 15),
                                    child: Image.asset(gambarPromo[pagePosition]))),
                              ],
                            );
                          }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,bottom: 5),
                        child: Row(
                        
                          children: indicators(gambarPromo.length,activePage)),
                      ),

                 InkWell(
                                  child: Image.asset("assets/image/Bantuan.png",
                                  height: 150,
                                  width: 450,)),
                              ],
                //  Container(
                //    child: Text("Promo",style: GoogleFonts.inter(
                //     fontSize: 14,
                //     fontWeight: FontWeight.w600
                //    ),),
                //  )
              
              
            ),
          
             )
             
    );
  }
}