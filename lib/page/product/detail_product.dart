import 'package:flutter/material.dart';
import 'package:ppodb_2/page/main_page/main_page.dart';
import 'package:ppodb_2/page/product/category_withprovider.dart';
import 'package:ppodb_2/page/product/ewallet.dart';
import 'package:ppodb_2/page/product/bpjs.dart';
import 'package:ppodb_2/page/product/listrik_pln.dart';
import 'package:ppodb_2/page/product/notready.dart';

import 'package:ppodb_2/page/product/pdams.dart';

import 'package:ppodb_2/page/product/tampilantelekom.dart';
import 'package:ppodb_2/page/product/token_listrik.dart';

class DetailProduct extends StatefulWidget {
  int code;
  DetailProduct({super.key, required this.code});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String koko = "";

  String status = "";
  TextEditingController bambang = TextEditingController();
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return widget.code == 6 || widget.code == 7
        ? Tampilan_telekom(
            type: widget.code,
          )
        : widget.code == 8
            ? BPJSScreen(
                tipe: widget.code,
              )
            : widget.code == 9
                ? Listrik_Pln_screen(
                    tipe: widget.code,
                  )
                : widget.code == 10
                    ? Token_listrik(
                        tipe: widget.code,
                      )
                    : widget.code == 11
                        ? PDAMS(
                            type: widget.code,
                          )
                        : widget.code == 14 ||
                                widget.code == 15 ||
                                widget.code == 16 ||
                                widget.code == 17
                            ? Topupwallet(type: widget.code)
                            : Notready();
  }
}
