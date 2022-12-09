
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/widgets/alert.dart';

import 'package:ppodb_2/shared/shared.dart';

class EditAkun extends StatefulWidget {
  const EditAkun({super.key});

  @override
  State<EditAkun> createState() => _EditAkunState();
}

class _EditAkunState extends State<EditAkun> {
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
           
            // if (_postProses == "berhasil") {
            //   Get.offAll(const SuratJalanView());
            // }
          },
        );
      }
    );
  }
     final formKey = GlobalKey<FormState>();
     double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    final _namalengkapController = TextEditingController();
     final _emailController = TextEditingController();
  final _nomortelponController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text("Ubah Data Akun",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.black
        ),
        textAlign: TextAlign.center,),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: widthh*16/360, right: widthh*16/360),
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding:  EdgeInsets.only(left: widthh*108/360,top: heightt*16/800,),
                     child: Container(
                              height: 91,
                              width: 112,                      
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(400),                        
                                image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1661767329669-2ff46c34fffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",),)
                              ),
                            ),
                   ),
                    SizedBox(
                      height: heightt * 16/800,
                    ),
                     Text(
                          "Nama",
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: heightt * 0.00625,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: _namalengkapController,
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
                              hintText: "Nama Lengkap",
                              labelText: "Nama Lengkap",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all( heightt*12/800),
                                child: Image.asset("assets/icon/person.png",
                                height: 10,
                                width: 10,),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all( heightt*13/800),
                                child: Image.asset("assets/icon/edit.png",
                                height: 10,
                                width: 10,),
                              ),
                            )),
                        SizedBox(
                          height: heightt * 0.0225,
                        ),
                          Text(
                      "Nomor Handphone",
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: heightt * 0.00625,
                    ),
                    TextFormField(
                        controller: _nomortelponController,
                        validator: (value) {
                          String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                          RegExp regExp = new RegExp(patttern);
                          if (value!.isEmpty) {
                            return "Harus diisi";
                          } else if (!regExp.hasMatch(value)) {
                            return 'Please enter valid mobile number';
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: "Nomor Aktif Kamu",
                          labelText: "Nomor Aktif Kamu",
                            prefixIcon: Padding(
                                padding: EdgeInsets.all( heightt*12/800),
                                child: Image.asset("assets/icon/hp.png",
                                height: 10,
                                width: 10,),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all( heightt*13/800),
                                child: Image.asset("assets/icon/edit.png",
                                height: 10,
                                width: 10,),
                              ),
                        )),
                    // SizedBox(
                    //   height:heightt* 5/800,
                    // ),
                     SizedBox(
                      height: heightt * 0.0225,
                    ),
                    Text(
                      "Alamat Email",
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: heightt * 0.00625,
                    ),
                    TextFormField(
                        controller: _emailController,
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return "email tidak valid";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: "emailkamu@gmail.com",
                          labelText: "emailkamu@gmail.com",
                          prefixIcon: Padding(
                                padding: EdgeInsets.all( heightt*12/800),
                                child: Image.asset("assets/icon/mail.png",
                                height: 10,
                                width: 10,),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all( heightt*13/800),
                                child: Image.asset("assets/icon/edit.png",
                                height: 10,
                                width: 10,),
                              ),
                        )),
                    SizedBox(
                      height: heightt * 0.0225,
                    ),
                     Padding(
                       padding:  EdgeInsets.only(top: heightt*160/800),
                       child: Container(
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
                            child: Text(
                              'Simpan Perubahan',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
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