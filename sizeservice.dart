//import 'dart:ffi';
//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';//sos caca

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//import '../themes/mytheme.dart';

class Sizeservice with ChangeNotifier {
  //SharedPreferences? sharedPreferences;
  double _currentSizeIndex = 10.0;

  double get currentSizeIndex => _currentSizeIndex;

  //static const String key1 = 'theme_key1';

  //Sizeservice(/*this.currentSizeIndex*/);
/*
  // ignore: unused_element
  void _initSp() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
*/
  Sizeservice() {
    _loadFontSize();
  }
  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    _currentSizeIndex = prefs.getDouble('fontSize') ?? 10.0;
    notifyListeners();
  }

  Future<void> setFontSize(double size) async {
    _currentSizeIndex = size;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', size);
  }

/*
//CAMBIE A UN VALOR ESPECIFICO
  Future<void> size(doubleSize) async {
    currentSizeIndex = doubleSize;
    await _saveSP();
    notifyListeners();
  }
  Future<void> _saveSP() async {
    sharedPreferences ??= await SharedPreferences.getInstance();
    await sharedPreferences!.setDouble(key1, currentSizeIndex);
  }
*/
}
