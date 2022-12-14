
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/email_boarding.dart';
import 'package:ppodb_2/page/widgets/constanta.dart' as color;
import 'package:ppodb_2/shared/shared.dart';
import 'package:ppodb_2/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     
     double heightt = MediaQuery.of(context).size.height;
   double widthh = MediaQuery.of(context).size.width;
    final _namalengkapController = TextEditingController();
     final _emailController = TextEditingController();
  final _nomortelponController = TextEditingController();
   final _katasandiController = TextEditingController();
  
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text("Reset Kata Sandi",
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
                   ListTile(
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
                tileColor: color.boxReset,
                leading: Padding(
                  padding:  EdgeInsets.all(heightt*17/800),
                  child: Image.asset("assets/icon/pemberitahuan.png",),
                ),
                title: Text("Verifikasi reset kata sandi akan dikirimkan ke email anda, silahkan pilih lanjutkan dan lakukan verifikasi. ",
                style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400),),
              ),          
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
                          //labelText: "emailkamu@gmail.com",
                          prefixIcon: Padding(
                                padding: EdgeInsets.all( heightt*12/800),
                                child: Image.asset("assets/icon/mail.png",
                                height: 10,
                                width: 10,),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all( heightt*13/800),
                                child: Image.asset("assets/icon/Close.png",
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
                            onPressed: ()async {
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
                              // String emaildata =_emailController.text;
                              // final  url =await 'mailto:$emaildata';
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => EmailBoarding())));
                            },
                            child: Text(
                              'Lanjutkan',
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