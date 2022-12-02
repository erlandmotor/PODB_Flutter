import 'package:flutter/cupertino.dart';

class AuthViewModel with ChangeNotifier {
  bool _is8Digit = false;
  bool _isHurufKecil = false;
  bool _isHurufKapital = false;
  bool _isAngka = false;
  String _simpanData = '';
  bool _passVissible = true;
  bool _passVissible2 = true;

  bool get is8Digit => _is8Digit;
  bool get isHurufKecil => _isHurufKecil;
  bool get isHurufKapital=> _isHurufKapital;
  bool get isAngka=> _isAngka;
  String get simpanData=> _simpanData;
  bool get passVissible => _passVissible;
  bool get passVissible2 => _passVissible2;

  void setIfValueEmpty() {
    _is8Digit = false;
    _isHurufKecil = false;
    _isHurufKapital = false;
    _isAngka = false;
    notifyListeners();
  }

  void setIfValueNotEmpty() {
    _is8Digit = true;
    _isHurufKecil = true;
    _isHurufKapital = true;
    _isAngka = true;
    notifyListeners();
  }

  void setIf8DigitNotMatch (){
     _is8Digit = false;
     notifyListeners();
  }
  void setIfHurufKecilNotMatch (){
     _isHurufKecil = false;
     notifyListeners();
  }
  void setIfHurufKapitalNotMatch (){
     _isHurufKapital = false;
     notifyListeners();
  }
  void setIfAngkaNotMatch (){
     _isAngka = false;
     notifyListeners();
  }

  void setPassVissible (){
    _passVissible = !_passVissible;
    notifyListeners();
  }

  void setPassVissible2 (){
    _passVissible2 = !_passVissible2;
    notifyListeners();
  }
}
