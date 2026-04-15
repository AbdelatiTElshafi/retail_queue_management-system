import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _FreshMeatVis = prefs.getBool('ff_FreshMeatVis') ?? _FreshMeatVis;
    });
    _safeInit(() {
      _FishVis = prefs.getBool('ff_FishVis') ?? _FishVis;
    });
    _safeInit(() {
      _FrozenMeatVis = prefs.getBool('ff_FrozenMeatVis') ?? _FrozenMeatVis;
    });
    _safeInit(() {
      _GroceryVis = prefs.getBool('ff_GroceryVis') ?? _GroceryVis;
    });
    _safeInit(() {
      _PoultryVis = prefs.getBool('ff_PoultryVis') ?? _PoultryVis;
    });
    _safeInit(() {
      _SpicesVis = prefs.getBool('ff_SpicesVis') ?? _SpicesVis;
    });
    _safeInit(() {
      _BakeryVis = prefs.getBool('ff_BakeryVis') ?? _BakeryVis;
    });
    _safeInit(() {
      _freshcheck = prefs.getBool('ff_freshcheck') ?? _freshcheck;
    });
    _safeInit(() {
      _frozencheck = prefs.getBool('ff_frozencheck') ?? _frozencheck;
    });
    _safeInit(() {
      _bakerycheck = prefs.getBool('ff_bakerycheck') ?? _bakerycheck;
    });
    _safeInit(() {
      _fishcheck = prefs.getBool('ff_fishcheck') ?? _fishcheck;
    });
    _safeInit(() {
      _poultrycheck = prefs.getBool('ff_poultrycheck') ?? _poultrycheck;
    });
    _safeInit(() {
      _spicescheck = prefs.getBool('ff_spicescheck') ?? _spicescheck;
    });
    _safeInit(() {
      _grocerycheck = prefs.getBool('ff_grocerycheck') ?? _grocerycheck;
    });
    _safeInit(() {
      _branchnamestate =
          prefs.getString('ff_branchnamestate') ?? _branchnamestate;
    });
    _safeInit(() {
      _note = prefs.getString('ff_note') ?? _note;
    });
    _safeInit(() {
      _branchsize = prefs.getInt('ff_branchsize') ?? _branchsize;
    });
    _safeInit(() {
      _dpetsize = prefs.getInt('ff_dpetsize') ?? _dpetsize;
    });
    _safeInit(() {
      _datesize = prefs.getInt('ff_datesize') ?? _datesize;
    });
    _safeInit(() {
      _ticketsize = prefs.getInt('ff_ticketsize') ?? _ticketsize;
    });
    _safeInit(() {
      _peoplesize = prefs.getInt('ff_peoplesize') ?? _peoplesize;
    });
    _safeInit(() {
      _notesize = prefs.getInt('ff_notesize') ?? _notesize;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _FreshMeatVis = false;
  bool get FreshMeatVis => _FreshMeatVis;
  set FreshMeatVis(bool value) {
    _FreshMeatVis = value;
    prefs.setBool('ff_FreshMeatVis', value);
  }

  bool _FishVis = false;
  bool get FishVis => _FishVis;
  set FishVis(bool value) {
    _FishVis = value;
    prefs.setBool('ff_FishVis', value);
  }

  bool _FrozenMeatVis = false;
  bool get FrozenMeatVis => _FrozenMeatVis;
  set FrozenMeatVis(bool value) {
    _FrozenMeatVis = value;
    prefs.setBool('ff_FrozenMeatVis', value);
  }

  bool _GroceryVis = false;
  bool get GroceryVis => _GroceryVis;
  set GroceryVis(bool value) {
    _GroceryVis = value;
    prefs.setBool('ff_GroceryVis', value);
  }

  bool _PoultryVis = false;
  bool get PoultryVis => _PoultryVis;
  set PoultryVis(bool value) {
    _PoultryVis = value;
    prefs.setBool('ff_PoultryVis', value);
  }

  bool _SpicesVis = false;
  bool get SpicesVis => _SpicesVis;
  set SpicesVis(bool value) {
    _SpicesVis = value;
    prefs.setBool('ff_SpicesVis', value);
  }

  bool _BakeryVis = false;
  bool get BakeryVis => _BakeryVis;
  set BakeryVis(bool value) {
    _BakeryVis = value;
    prefs.setBool('ff_BakeryVis', value);
  }

  bool _freshcheck = false;
  bool get freshcheck => _freshcheck;
  set freshcheck(bool value) {
    _freshcheck = value;
    prefs.setBool('ff_freshcheck', value);
  }

  bool _frozencheck = false;
  bool get frozencheck => _frozencheck;
  set frozencheck(bool value) {
    _frozencheck = value;
    prefs.setBool('ff_frozencheck', value);
  }

  bool _bakerycheck = false;
  bool get bakerycheck => _bakerycheck;
  set bakerycheck(bool value) {
    _bakerycheck = value;
    prefs.setBool('ff_bakerycheck', value);
  }

  bool _fishcheck = false;
  bool get fishcheck => _fishcheck;
  set fishcheck(bool value) {
    _fishcheck = value;
    prefs.setBool('ff_fishcheck', value);
  }

  bool _poultrycheck = false;
  bool get poultrycheck => _poultrycheck;
  set poultrycheck(bool value) {
    _poultrycheck = value;
    prefs.setBool('ff_poultrycheck', value);
  }

  bool _spicescheck = false;
  bool get spicescheck => _spicescheck;
  set spicescheck(bool value) {
    _spicescheck = value;
    prefs.setBool('ff_spicescheck', value);
  }

  bool _grocerycheck = false;
  bool get grocerycheck => _grocerycheck;
  set grocerycheck(bool value) {
    _grocerycheck = value;
    prefs.setBool('ff_grocerycheck', value);
  }

  String _branchnamestate = '';
  String get branchnamestate => _branchnamestate;
  set branchnamestate(String value) {
    _branchnamestate = value;
    prefs.setString('ff_branchnamestate', value);
  }

  String _note = '';
  String get note => _note;
  set note(String value) {
    _note = value;
    prefs.setString('ff_note', value);
  }

  int _branchsize = 0;
  int get branchsize => _branchsize;
  set branchsize(int value) {
    _branchsize = value;
    prefs.setInt('ff_branchsize', value);
  }

  int _dpetsize = 0;
  int get dpetsize => _dpetsize;
  set dpetsize(int value) {
    _dpetsize = value;
    prefs.setInt('ff_dpetsize', value);
  }

  int _datesize = 0;
  int get datesize => _datesize;
  set datesize(int value) {
    _datesize = value;
    prefs.setInt('ff_datesize', value);
  }

  int _ticketsize = 0;
  int get ticketsize => _ticketsize;
  set ticketsize(int value) {
    _ticketsize = value;
    prefs.setInt('ff_ticketsize', value);
  }

  int _peoplesize = 0;
  int get peoplesize => _peoplesize;
  set peoplesize(int value) {
    _peoplesize = value;
    prefs.setInt('ff_peoplesize', value);
  }

  int _notesize = 0;
  int get notesize => _notesize;
  set notesize(int value) {
    _notesize = value;
    prefs.setInt('ff_notesize', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
