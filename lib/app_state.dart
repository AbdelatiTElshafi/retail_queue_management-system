import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _countMeat = 1;
  int get countMeat => _countMeat;
  set countMeat(int value) {
    _countMeat = value;
  }

  int _countCheese = 1;
  int get countCheese => _countCheese;
  set countCheese(int value) {
    _countCheese = value;
  }

  int _countBakery = 1;
  int get countBakery => _countBakery;
  set countBakery(int value) {
    _countBakery = value;
  }

  int _countVegetables = 1;
  int get countVegetables => _countVegetables;
  set countVegetables(int value) {
    _countVegetables = value;
  }

  int _countFish = 1;
  int get countFish => _countFish;
  set countFish(int value) {
    _countFish = value;
  }

  int _servingMeat = 0;
  int get servingMeat => _servingMeat;
  set servingMeat(int value) {
    _servingMeat = value;
  }

  int _servingCheese = 0;
  int get servingCheese => _servingCheese;
  set servingCheese(int value) {
    _servingCheese = value;
  }

  int _servingBakery = 0;
  int get servingBakery => _servingBakery;
  set servingBakery(int value) {
    _servingBakery = value;
  }

  int _servingVegetables = 0;
  int get servingVegetables => _servingVegetables;
  set servingVegetables(int value) {
    _servingVegetables = value;
  }

  int _servingFish = 0;
  int get servingFish => _servingFish;
  set servingFish(int value) {
    _servingFish = value;
  }
}
