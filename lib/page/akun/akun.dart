import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppodb_2/page/akun/background.dart';
import 'package:ppodb_2/page/akun/edit_data_akun.dart';
import 'package:ppodb_2/page/akun/edit_password.dart';
import 'package:ppodb_2/page/login_register/login_page.dart';
import 'package:ppodb_2/page/login_register/register1_page.dart';
import 'package:ppodb_2/page/widgets/alert.dart';

import 'package:ppodb_2/page/widgets/boxIconMenu.dart';
import 'package:ppodb_2/page/widgets/boxSaldo.dart';
import 'package:ppodb_2/page/widgets/box_besar.dart';
import 'package:ppodb_2/page/widgets/box_kecil.dart';
import 'package:ppodb_2/page/widgets/constanta.dart';
import 'package:ppodb_2/page/widgets/rating.dart';
import 'package:ppodb_2/page/widgets/textIconMenu.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.only(bottom: 3, left: 3, right: 3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : offIndikartor,
          shape: BoxShape.circle),
    );
  });
}

class _ProfilState extends State<Profil> {
  late PageController _pageController;
  int activePage = 1;
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future showAlertDialog(final String label, final Color color,
        final String content, final String label2, final String gambar) {
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
          });
    }

    Future showAlertDialog2(

        //final String label,
        final Color color,
        final String content,
        // final String label2,

        final String gambar) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertRating(
              titleColor: color,
              contentApproval: content,
              colorButton: color,
              gambar: gambar,
              onClicked: () async {
                // if (_postProses == "berhasil") {
                //   Get.offAll(const SuratJalanView());
                // }
              },
            );
          });
    }

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
                    SizedBox(
                      height: heightt * 40 / 800,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: widthh * 16 / 360, right: widthh * 16 / 360),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: heightt * 80 / 800,
                            width: widthh * 80 / 360,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(400),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://plus.unsplash.com/premium_photo-1661767329669-2ff46c34fffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: widthh * 20 / 360,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: heightt * 13 / 800,
                                ),
                                child: Text(
                                  "Anya Greadline",
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: colorwhite),
                                ),
                              ),
                              Text(
                                "+62 8953 2377 3144",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: colorwhite),
                              ),
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
                                  padding: EdgeInsets.only(right: 8),
                                  child: Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: sideSukes,
                                          borderRadius:
                                              BorderRadius.circular(400)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/icon/atas.png",
                                          height: 15,
                                          width: 15,
                                          color: colorSukses,
                                        ),
                                      )),
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

                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Uang Masuk",
                                        style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("Rp300.000",
                                          style: GoogleFonts.inter(
                                              color: warnaHarga,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18)),
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
                                  padding: EdgeInsets.only(right: 8),
                                  child: Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: sideError,
                                          borderRadius:
                                              BorderRadius.circular(400)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/icon/bawah.png",
                                          height: 15,
                                          width: 15,
                                          color: colorError,
                                        ),
                                      )),
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

                                    SizedBox(width: 5),
                                    Text("Uang Keluar",
                                        style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text("Rp300.000",
                                          style: GoogleFonts.inter(
                                              color: warnaHarga,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                    Padding(
                      padding: EdgeInsets.only(
                        left: widthh * 16 / 360,
                        right: widthh * 16 / 360,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: heightt * 90 / 800,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(
                            top: heightt * 16 / 800,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            // childAspectRatio: 5 ,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 16,
                          ),
                          itemCount: namaTopup.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (namaTopup[index] == "Isi Saldo") {
                                  // Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                                }
                                if (namaTopup[index] == "Kirim Uang") {
                                  //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                                }
                                if (namaTopup[index] == "Kartu Saya") {
                                  //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                                }
                                if (namaTopup[index] == "Voucher Saya") {
                                  //  / Navigator.push(context, MaterialPageRoute(builder: ((context) => Pulsa())));
                                }
                              },
                              child: Column(
                                children: [
                                  if (namaTopup[index] == "Isi Saldo") ...[
                                    BoxIconModul(icon: topUPProfil[index]),
                                    TextIconModul(
                                        label: namaTopup[index].toString())
                                  ],
                                  if (namaTopup[index] == "Kirim Uang") ...[
                                    BoxIconModul(icon: topUPProfil[index]),
                                    TextIconModul(
                                        label: namaTopup[index].toString())
                                  ],
                                  if (namaTopup[index] == "Kartu Saya") ...[
                                    BoxIconModul(icon: topUPProfil[index]),
                                    TextIconModul(
                                        label: namaTopup[index].toString())
                                  ],
                                  if (namaTopup[index] == "Voucher Saya") ...[
                                    BoxIconModul(icon: topUPProfil[index]),
                                    TextIconModul(
                                        label: namaTopup[index].toString())
                                  ],
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: heightt * 400 / 800,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.all(2),
                        children: [
                          Container(
                            height: heightt * 200 / 800,
                            width: widthh,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: widthh * 16 / 360,
                                      top: heightt * 16 / 800,
                                      bottom: heightt * 8 / 800),
                                  child: Text("Rekomendasi",
                                      style: GoogleFonts.inter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                                child: Container(
                                              margin: EdgeInsets.only(
                                                  right: widthh * 20 / 360),
                                              width: widthh,
                                              height: heightt * 140 / 800,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          gambarRekomdasi[
                                                              pagePosition]))),
                                            )),
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: widthh,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: widthh * 16 / 360,
                                          right: widthh * 16 / 360),
                                      child: Text(
                                        "Akun",
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          ListTile(
                                            contentPadding: EdgeInsets.only(
                                                left: 30, right: 30),
                                            leading: ShaderMask(
                                                shaderCallback: (Rect bounds) {
                                                  return const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: <Color>[
                                                      primaryColor,
                                                      secondaryColor,
                                                    ],
                                                    tileMode: TileMode.mirror,
                                                  ).createShader(bounds);
                                                },
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/icon/person.png"))),
                                                )),
                                            title: Transform.translate(
                                              offset: const Offset(-20, 0),
                                              child: const Text(
                                                "Ubah Data Akun",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            trailing: Transform.translate(
                                              offset: const Offset(-12, 0),
                                              child: ShaderMask(
                                                  shaderCallback:
                                                      (Rect bounds) {
                                                    return const LinearGradient(
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                      colors: <Color>[
                                                        primaryColor,
                                                        secondaryColor,
                                                      ],
                                                      tileMode: TileMode.mirror,
                                                    ).createShader(bounds);
                                                  },
                                                  child: Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/icon/kanan.png"))),
                                                  )),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          EditAkun())));
                                            },
                                          ),
                                          ListTile(
                                            contentPadding: EdgeInsets.only(
                                                left: 30, right: 30),
                                            leading: ShaderMask(
                                                shaderCallback: (Rect bounds) {
                                                  return const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: <Color>[
                                                      primaryColor,
                                                      secondaryColor,
                                                    ],
                                                    tileMode: TileMode.mirror,
                                                  ).createShader(bounds);
                                                },
                                                child: Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/icon/lock.png"))),
                                                )),
                                            title: Transform.translate(
                                              offset: const Offset(-20, 0),
                                              child: const Text(
                                                "Ubah Kata Sandi",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            trailing: Transform.translate(
                                              offset: const Offset(-12, 0),
                                              child: ShaderMask(
                                                  shaderCallback:
                                                      (Rect bounds) {
                                                    return const LinearGradient(
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                      colors: <Color>[
                                                        primaryColor,
                                                        secondaryColor,
                                                      ],
                                                      tileMode: TileMode.mirror,
                                                    ).createShader(bounds);
                                                  },
                                                  child: Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/icon/kanan.png"))),
                                                  )),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          EditPassword())));
                                            },
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: widthh * 16 / 360,
                                                right: widthh * 16 / 360),
                                            child: Text(
                                              "Lainnya",
                                              style: GoogleFonts.inter(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                ListTile(
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 30, right: 30),
                                                  leading: ShaderMask(
                                                      shaderCallback:
                                                          (Rect bounds) {
                                                        return const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: <Color>[
                                                            primaryColor,
                                                            secondaryColor,
                                                          ],
                                                          tileMode:
                                                              TileMode.mirror,
                                                        ).createShader(bounds);
                                                      },
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/icon/star.png"))),
                                                      )),
                                                  title: Transform.translate(
                                                    offset:
                                                        const Offset(-20, 0),
                                                    child: const Text(
                                                      "Beri Rating",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  trailing: Transform.translate(
                                                    offset:
                                                        const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode:
                                                                TileMode.mirror,
                                                          ).createShader(
                                                              bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    showAlertDialog2(
                                                        primaryColor,
                                                        "Apakah Kamu Yakin Ingin Keluar?",
                                                        "assets/icon/cuate2.png");
                                                  },
                                                ),
                                                ListTile(
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 30, right: 30),
                                                  leading: ShaderMask(
                                                      shaderCallback:
                                                          (Rect bounds) {
                                                        return const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: <Color>[
                                                            primaryColor,
                                                            secondaryColor,
                                                          ],
                                                          tileMode:
                                                              TileMode.mirror,
                                                        ).createShader(bounds);
                                                      },
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/icon/doc.png"))),
                                                      )),
                                                  title: Transform.translate(
                                                    offset:
                                                        const Offset(-20, 0),
                                                    child: const Text(
                                                      "Syarat dan Ketentuan",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  trailing: Transform.translate(
                                                    offset:
                                                        const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode:
                                                                TileMode.mirror,
                                                          ).createShader(
                                                              bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  tileColor: colorSaldo,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  //contentPadding: EdgeInsets.only(left: 30, right: 30),
                                                  leading: ShaderMask(
                                                      shaderCallback:
                                                          (Rect bounds) {
                                                        return const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: <Color>[
                                                            primaryColor,
                                                            secondaryColor,
                                                          ],
                                                          tileMode:
                                                              TileMode.mirror,
                                                        ).createShader(bounds);
                                                      },
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/icon/logout.png"))),
                                                      )),
                                                  title: Transform.translate(
                                                    offset:
                                                        const Offset(-20, 0),
                                                    child: const Text(
                                                      "Keluar",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  trailing: Transform.translate(
                                                    offset:
                                                        const Offset(-12, 0),
                                                    child: ShaderMask(
                                                        shaderCallback:
                                                            (Rect bounds) {
                                                          return const LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: <Color>[
                                                              primaryColor,
                                                              secondaryColor,
                                                            ],
                                                            tileMode:
                                                                TileMode.mirror,
                                                          ).createShader(
                                                              bounds);
                                                        },
                                                        child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/icon/kanan.png"))),
                                                        )),
                                                  ),
                                                  onTap: () {
                                                    showAlertDialog(
                                                        "Tidak",
                                                        primaryColor,
                                                        "Apakah Kamu Yakin Ingin Keluar?",
                                                        "Iya",
                                                        "assets/icon/amico.png");
                                                  },
                                                  //  Navigator.push(context, MaterialPageRoute(builder: ((context) => Register1Page())));
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: heightt * 40 / 800),
                                                  child: Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          "assets/icon/c.png",
                                                          height: 30,
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              widthh * 6 / 360,
                                                        ),
                                                        Image.asset(
                                                          "assets/icon/MYCUAN.png",
                                                          height: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: heightt * .1,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ])),
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
