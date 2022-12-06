String checkprovider(String bambang) {
  String value;

  value = bambang.isEmpty
      ? "Silahkan Masukkan Nomor Handphone Anda"
      : bambang.length < 10
          ? "Silahkan Masukkan Nomor Yang Benar"
          : bambang.length > 13
              ? "Silahkan Masukkan Nomor Yang Valid"
              : bambang[0] != "0" || bambang[1] != "8"
                  ? "Hanya bisa melakukan transaksi untuk provider Indonesia"
                  : bambang[2] == "5" && bambang[3] == "2" ||
                          bambang[2] == "5" && bambang[3] == "3" ||
                          bambang[2] == "5" && bambang[3] == "1"
                      ? "Telkomsel"
                      : bambang[2] == "1" && bambang[3] == "1" ||
                              bambang[2] == "1" && bambang[3] == "2" ||
                              bambang[2] == "1" && bambang[3] == "3" ||
                              bambang[2] == "2" && bambang[3] == "1" ||
                              bambang[2] == "2" && bambang[3] == "2"
                          ? "Telkomsel"
                          : bambang[2] == "1" && bambang[3] == "7" ||
                                  bambang[2] == "1" && bambang[3] == "8" ||
                                  bambang[2] == "1" && bambang[3] == "9" ||
                                  bambang[2] == "5" && bambang[3] == "9" ||
                                  bambang[2] == "7" && bambang[3] == "7" ||
                                  bambang[2] == "7" && bambang[3] == "8"
                              ? "XL"
                              : bambang[2] == "3" && bambang[3] == "2" ||
                                      bambang[2] == "3" && bambang[3] == "3" ||
                                      bambang[2] == "3" && bambang[3] == "8"
                                  ? "AXIS"
                                  : bambang[2] == "5" && bambang[3] == "7" ||
                                          bambang[2] == "5" && bambang[3] == "6"
                                      ? "Telkomsel"
                                      : bambang[2] == "9" &&
                                                  bambang[3] == "6" ||
                                              bambang[2] == "9" &&
                                                  bambang[3] == "5" ||
                                              bambang[2] == "9" &&
                                                  bambang[3] == "7" ||
                                              bambang[2] == "9" &&
                                                  bambang[3] == "8" ||
                                              bambang[2] == "9" &&
                                                  bambang[3] == "9"
                                          ? "Tri"
                                          : bambang[2] == "8" &&
                                                      bambang[3] == "8" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "1" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "2" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "3" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "4" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "5" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "6" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "7" ||
                                                  bambang[2] == "8" &&
                                                      bambang[3] == "9"
                                              ? "Smartfren"
                                              : "Nomor yang anda masukkan tidak terdaftar di provider Indonesia";
  return value;
}

String checkPicprovider(String bambang) {
  String value;

  value = bambang.isEmpty
      ? ""
      : bambang.length < 10 && bambang.length > 13
          ? "hoho"
          : bambang[0] != "0" || bambang[1] != "8"
              ? ""
              : bambang[2] == "5" && bambang[3] == "2" ||
                      bambang[2] == "5" && bambang[3] == "3" ||
                      bambang[2] == "5" && bambang[3] == "1"
                  ? "assets/image/telkomsel1.png"
                  : bambang[2] == "1" && bambang[3] == "1" ||
                          bambang[2] == "1" && bambang[3] == "2" ||
                          bambang[2] == "1" && bambang[3] == "3" ||
                          bambang[2] == "2" && bambang[3] == "1" ||
                          bambang[2] == "2" && bambang[3] == "2"
                      ? "assets/image/telkomsel1.png"
                      : bambang[2] == "1" && bambang[3] == "7" ||
                              bambang[2] == "1" && bambang[3] == "8" ||
                              bambang[2] == "1" && bambang[3] == "9" ||
                              bambang[2] == "5" && bambang[3] == "9" ||
                              bambang[2] == "7" && bambang[3] == "7" ||
                              bambang[2] == "7" && bambang[3] == "8"
                          ? "assets/image/XL.png"
                          : bambang[2] == "3" && bambang[3] == "2" ||
                                  bambang[2] == "3" && bambang[3] == "3" ||
                                  bambang[2] == "3" && bambang[3] == "8"
                              ? "assets/image/Axis_logo_2015.png"
                              : bambang[2] == "5" && bambang[3] == "7" ||
                                      bambang[2] == "5" && bambang[3] == "6"
                                  ? "assets/image/telkomsel1.png"
                                  : bambang[2] == "9" && bambang[3] == "6" ||
                                          bambang[2] == "9" &&
                                              bambang[3] == "5" ||
                                          bambang[2] == "9" &&
                                              bambang[3] == "7" ||
                                          bambang[2] == "9" &&
                                              bambang[3] == "8" ||
                                          bambang[2] == "9" && bambang[3] == "9"
                                      ? "assets/image/3-brand.png"
                                      : bambang[2] == "8" &&
                                                  bambang[3] == "8" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "1" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "2" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "3" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "4" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "5" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "6" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "7" ||
                                              bambang[2] == "8" &&
                                                  bambang[3] == "9"
                                          ? "assets/image/smartfren.png"
                                          : "";
  return value;
}
