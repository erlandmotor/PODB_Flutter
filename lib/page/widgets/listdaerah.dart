import 'package:flutter/material.dart';
import 'package:ppodb_2/models/login/dummymodel.dart';

class Wilayahpicker extends StatefulWidget {
  const Wilayahpicker({super.key});

  @override
  State<Wilayahpicker> createState() => _WilayahpickerState();
}

class _WilayahpickerState extends State<Wilayahpicker> {
  String koko = "";
  String status = "";
  List wilayah = [
    "Kab. Jepara",
    "Kab. Tegal",
    "Kab. Magelang",
    "Kab. Pekalongan",
    "Kota. Pekalongan",
    "Kota. Tegal",
    "Kab. Gianyar",
    "Kab. Bangli",
    "Kab. Klungkung",
    "Kab. Badung",
    "Kab. Buleleng",
    "Kab. Denpasar",
    "Kab. Bone Bolango",
    "Kab. Gorontalo",
    "Kota. Gorontalo",
    "Kota Ternate",
    "Kab. Maluku Tenggara",
    "Kata Ambon DSA"
  ];

  List wilayahs = [];
  List<Dummywilayah> daerah = [
    Dummywilayah(id: 1, provinsi: "Jawa Tengah", wilayah: [
      "Kab. Jepara",
      "Kab. Tegal",
      "Kab. Magelang",
      "Kab. Pekalongan",
      "Kota. Pekalongan",
      "Kota. Tegal"
    ]),
    Dummywilayah(
        id: 2,
        provinsi: "Gorontalo",
        wilayah: ["Kab. Bone Bolango", "Kab. Gorontalo", "Kota. Gorontalo"]),
    Dummywilayah(id: 3, provinsi: "Bali", wilayah: [
      "Kab. Gianyar",
      "Kab. Bangli",
      "Kab. Klungkung",
      "Kab. Badung",
      "Kab. Buleleng",
      "Kab. Denpasar"
    ]),
    Dummywilayah(
        id: 4,
        provinsi: "Maluku",
        wilayah: ["Kota Ternate", "Kab. Maluku Tenggara", "Kata Ambon DSA"])
  ];
  TextEditingController bambang = TextEditingController();
  //color=0xff
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Pilih Wilayah",
          selectionColor: Color(0xff5C5D61),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * .0444,
            right: size.width * .044,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .02,
              ),
              TextField(
                decoration: koko == ""
                    ? InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Cari wilayah kamu!")
                    : InputDecoration(
                        prefix: const Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                koko = "";
                                bambang.clear();
                              });
                            },
                            icon: const Icon(Icons.cancel)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                onChanged: ((value) {
                  search(koko);
                  setState(() {
                    koko = value;
                    status = "";
                  });
                }),
                controller: bambang,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: size.height * .02,
              ),
              koko == ""
                  ? Column(
                      children: [
                        for (var i = 0; i < daerah.length; i++)
                          SizedBox(
                            width: size.width * .911,
                            child: Column(
                              children: [
                                Container(
                                    width: size.width * .911,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                        color: Color(0xffE7ECF9)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * .0333,
                                          top: size.height * .015,
                                          bottom: size.height * .015),
                                      child: Text.rich(
                                        TextSpan(text: daerah[i].provinsi),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                        textAlign: TextAlign.left,
                                      ),
                                    )),
                                ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return const Divider();
                                  },
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: daerah[i].wilayah.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      onTap: () {
                                        Navigator.pop(
                                            context, daerah[i].wilayah[index]);
                                      },
                                      title: Text(daerah[i].wilayah[index]),
                                    );
                                  },
                                )
                              ],
                            ),
                          )
                      ],
                    )
                  : SizedBox(
                      width: size.width * .911,
                      child: Column(children: [
                        Container(
                          width: size.width * .911,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              shrinkWrap: true,
                              itemCount: wilayahs.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  onTap: () {
                                    Navigator.pop(context, wilayahs[index]);
                                  },
                                  title: Text(wilayahs[index]),
                                );
                              }),
                        )
                      ])),
              SizedBox(
                height: size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void search(String query) {
    final pencarian = wilayah.where((will) {
      final wilayah = will.toLowerCase();
      final input = query.toLowerCase();
      return wilayah.contains(input);
    }).toList();
    setState(() {
      wilayahs = pencarian;
    });
  }
}
