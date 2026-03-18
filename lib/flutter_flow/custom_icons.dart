import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _freshMeatFamily = 'FreshMeat';
  static const String _groceryFamily = 'Grocery';
  static const String _bakeryFamily = 'Bakery';
  static const String _spicesFamily = 'Spices';
  static const String _frozenMeatFamily = 'FrozenMeat';
  static const String _fishFamily = 'Fish';
  static const String _chickenFamily = 'Chicken';

  // Fresh Meat
  static const IconData kfreshMeat =
      IconData(0xe000, fontFamily: _freshMeatFamily);

  // Grocery
  static const IconData kgrocery = IconData(0xe000, fontFamily: _groceryFamily);

  // bakery
  static const IconData kbakery = IconData(0xe000, fontFamily: _bakeryFamily);

  // spices
  static const IconData kspices = IconData(0xe000, fontFamily: _spicesFamily);

  // Frozen Meat
  static const IconData kfrozen =
      IconData(0xe000, fontFamily: _frozenMeatFamily);

  // Fish
  static const IconData kfish = IconData(0xe000, fontFamily: _fishFamily);

  // Chicken
  static const IconData kchicken = IconData(0xe000, fontFamily: _chickenFamily);
}
