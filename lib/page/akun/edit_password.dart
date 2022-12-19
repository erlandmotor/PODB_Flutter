
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/reset_password.dart';
import 'package:ppodb_2/page/main_page/main_page.dart';
import 'package:ppodb_2/page/widgets/alert.dart';
import 'package:ppodb_2/page/widgets/constanta.dart' as color;
import 'package:ppodb_2/service/database/myCuan_Api.dart';
import 'package:ppodb_2/shared/shared.dart';
import 'package:ppodb_2/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({super.key,});

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
    final formKey = GlobalKey<FormState>();
  final _pastPassController = TextEditingController();
   final _katasandiController = TextEditingController();
    final _katasandibaruController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
     Future showAlertDialog(
   
    final String label,
    final Color color,
    final String content,
    final String label2,
 

    final String gambar
  ) {
    return showDialog(
      context: context, 
      builder: (BuildContext context) {
        return Alert(
          labelButton2: label2,
          titleColor: color,
          contentApproval: content,
          labelButton: label,
          colorButton: color,
          gambar: gambar,
          onClicked: () async {
           final passUpdate =await MyCuanAPI().updatePassowrd(_pastPassController.text, _katasandibaruController.text);
            print(passUpdate);
            Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const MainPage(),
                                  )
                                  );
            // if (_postProses == "berhasil") {
            //   Get.offAll(const SuratJalanView());
            // }
          },
        );
      }
    );
  }
     
     double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    
   final provider = Provider.of<AuthViewModel>(context, listen: false);
    final providerKonfirmasi = Provider.of<AuthViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text("Ubah Kata Sandi",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.black
        ),
        textAlign: TextAlign.center,),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: widthh*16/360, right: widthh*16/360),
        child: SizedBox(
          height: double.infinity,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                  
                    SizedBox(
                      height: heightt * 16/800,
                    ),
                     Text(
                          "Kata Sandi Saat Ini",
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: heightt * 0.00625,
                        ),
                        TextFormField(
                            
                            controller: _pastPassController,
                            validator: (value) {
                              //final nameRegExp = new RegExp(r"^\s([A-Za-z]{1,}([.,] |[-']| ))+[A-Za-z]+.?\s$");
                              if (value!.isEmpty) {
                                return "Harus diisi";
                              } //else if (!nameRegExp.hasMatch(value)) {
                              //   return 'Nama tidak boleh angka';
                              // }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: "Kata Sandi",
                              // labelText: "Kata Sandi",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all( heightt*12/800),
                                child: Image.asset("assets/icon/lock.png",
                                height: 10,
                                width: 10,),
                              ),
                              
                            )),
                        SizedBox(
                          height: heightt * 0.0225,
                        ),
                       
                    Padding(
                      padding:  EdgeInsets.only(left: widthh*222/360,bottom: heightt*16/800),
                      child: InkWell(
                        child: Text(
                          "Lupa Kata Sandi?",
                          style: dengerTextStyle.copyWith(fontSize: 12,color: primaryColor),
                          textAlign: TextAlign.end,
                          
                        ),
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: ((context) => const ResetPassword())));
                        },
                      ),
                    ),
                   Text(
                "Kata Sandi Baru",
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: heightt * 0.0125,
              ),
              TextFormField(
                  obscureText: providerKonfirmasi.passVissible,
                  controller: _katasandibaruController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Sandi salah";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(providerKonfirmasi.passVissible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        provider.setPassVissible();
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Kata Sandi",
                    labelText: "Kata Sandi",
                  )),
              SizedBox(
                height: heightt * 0.0125,
              ),
                      Text(
                "Konfirmasi Kata Sandi Baru",
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: heightt * 0.0125,
              ),
              TextFormField(
                  obscureText: providerKonfirmasi.passVissible,
                  controller: _katasandiController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Sandi salah";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(providerKonfirmasi.passVissible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        provider.setPassVissible();
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Kata Sandi",
                    labelText: "Kata Sandi",
                  )),
              SizedBox(
                height: heightt * 0.0125,
              ),
              ListTile(
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
                tileColor: color.boxPassword,
                leading: Padding(
                  padding:  EdgeInsets.all(heightt*17/800),
                  child: Image.asset("assets/icon/peringatan.png",),
                ),
                title: Text("Pihak MyCuan tidak pernah meminta email, kata sandi, atau data diri Anda lainnya.",
                style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400),),
              ),
                     Padding(
                       padding:  EdgeInsets.only(top: heightt*160/800),
                       child: SizedBox(
                        height: heightt * 0.06,
                        width: widthh * 0.911,
                        child: ElevatedButton(
                            onPressed: () {
                              // final isValidForm =
                              //     formKey.currentState!.validate();
                              // if (isValidForm) {
                              //   final users = Register1Model(
                              //       namalengkap: _namalengkapController.text,
                              //       email: _emailController.text,
                              //       nomortelpon: _nomortelponController.text);
                              //   Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => Register2Page(),
                              //   ));
                              // }
                               showAlertDialog(
                              "Kembali", 
                              primaryColor, 
                              "Yeey, Profil berhasil diperbarui!", 
                              "Selesai",
                               "assets/icon/cuate.png");
                            
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            child: Text(
                              'Konfirmasi',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
                            )),
                    ),
                     ),
                    // Text(
                    //   "Isi dengan nomor kamu yang masih aktif ya",
                    //   style: dengerTextStyle.copyWith(fontSize: 12),
                    //   textAlign: TextAlign.start,
                    // ),
                    // SizedBox(
                    //   height: heightt * 0.125,
                    // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}