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
    _safeInit(() {
      _eddycheck = prefs.getBool('ff_eddycheck') ?? _eddycheck;
    });
    _safeInit(() {
      _freshvegcheck = prefs.getBool('ff_freshvegcheck') ?? _freshvegcheck;
    });
    _safeInit(() {
      _frozenvegcheck = prefs.getBool('ff_frozenvegcheck') ?? _frozenvegcheck;
    });
    _safeInit(() {
      _restcheck = prefs.getBool('ff_restcheck') ?? _restcheck;
    });
    _safeInit(() {
      _tahinicheck = prefs.getBool('ff_tahinicheck') ?? _tahinicheck;
    });
    _safeInit(() {
      _pastiriescheck = prefs.getBool('ff_pastiriescheck') ?? _pastiriescheck;
    });
    _safeInit(() {
      _abuaufcheck = prefs.getBool('ff_abuaufcheck') ?? _abuaufcheck;
    });
    _safeInit(() {
      _eddysvis = prefs.getBool('ff_eddysvis') ?? _eddysvis;
    });
    _safeInit(() {
      _freshvegvis = prefs.getBool('ff_freshvegvis') ?? _freshvegvis;
    });
    _safeInit(() {
      _Frozenvegvis = prefs.getBool('ff_Frozenvegvis') ?? _Frozenvegvis;
    });
    _safeInit(() {
      _Restvis = prefs.getBool('ff_Restvis') ?? _Restvis;
    });
    _safeInit(() {
      _Freshjuicevis = prefs.getBool('ff_Freshjuicevis') ?? _Freshjuicevis;
    });
    _safeInit(() {
      _Tahinivis = prefs.getBool('ff_Tahinivis') ?? _Tahinivis;
    });
    _safeInit(() {
      _Pastriesvis = prefs.getBool('ff_Pastriesvis') ?? _Pastriesvis;
    });
    _safeInit(() {
      _AbuAufvis = prefs.getBool('ff_AbuAufvis') ?? _AbuAufvis;
    });
    _safeInit(() {
      _customercheck = prefs.getBool('ff_customercheck') ?? _customercheck;
    });
    _safeInit(() {
      _customerVis = prefs.getBool('ff_customerVis') ?? _customerVis;
    });
    _safeInit(() {
      _Severip = prefs.getString('ff_Severip') ?? _Severip;
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

  String _branchnamestate = 'مدينة بدر';
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

  int _branchsize = 75;
  int get branchsize => _branchsize;
  set branchsize(int value) {
    _branchsize = value;
    prefs.setInt('ff_branchsize', value);
  }

  int _dpetsize = 60;
  int get dpetsize => _dpetsize;
  set dpetsize(int value) {
    _dpetsize = value;
    prefs.setInt('ff_dpetsize', value);
  }

  int _datesize = 25;
  int get datesize => _datesize;
  set datesize(int value) {
    _datesize = value;
    prefs.setInt('ff_datesize', value);
  }

  int _ticketsize = 100;
  int get ticketsize => _ticketsize;
  set ticketsize(int value) {
    _ticketsize = value;
    prefs.setInt('ff_ticketsize', value);
  }

  int _peoplesize = 30;
  int get peoplesize => _peoplesize;
  set peoplesize(int value) {
    _peoplesize = value;
    prefs.setInt('ff_peoplesize', value);
  }

  int _notesize = 25;
  int get notesize => _notesize;
  set notesize(int value) {
    _notesize = value;
    prefs.setInt('ff_notesize', value);
  }

  bool _eddycheck = false;
  bool get eddycheck => _eddycheck;
  set eddycheck(bool value) {
    _eddycheck = value;
    prefs.setBool('ff_eddycheck', value);
  }

  bool _freshvegcheck = false;
  bool get freshvegcheck => _freshvegcheck;
  set freshvegcheck(bool value) {
    _freshvegcheck = value;
    prefs.setBool('ff_freshvegcheck', value);
  }

  bool _frozenvegcheck = false;
  bool get frozenvegcheck => _frozenvegcheck;
  set frozenvegcheck(bool value) {
    _frozenvegcheck = value;
    prefs.setBool('ff_frozenvegcheck', value);
  }

  bool _restcheck = false;
  bool get restcheck => _restcheck;
  set restcheck(bool value) {
    _restcheck = value;
    prefs.setBool('ff_restcheck', value);
  }

  bool _freshjuicecheck = false;
  bool get freshjuicecheck => _freshjuicecheck;
  set freshjuicecheck(bool value) {
    _freshjuicecheck = value;
  }

  bool _tahinicheck = false;
  bool get tahinicheck => _tahinicheck;
  set tahinicheck(bool value) {
    _tahinicheck = value;
    prefs.setBool('ff_tahinicheck', value);
  }

  bool _pastiriescheck = false;
  bool get pastiriescheck => _pastiriescheck;
  set pastiriescheck(bool value) {
    _pastiriescheck = value;
    prefs.setBool('ff_pastiriescheck', value);
  }

  bool _abuaufcheck = false;
  bool get abuaufcheck => _abuaufcheck;
  set abuaufcheck(bool value) {
    _abuaufcheck = value;
    prefs.setBool('ff_abuaufcheck', value);
  }

  bool _eddysvis = false;
  bool get eddysvis => _eddysvis;
  set eddysvis(bool value) {
    _eddysvis = value;
    prefs.setBool('ff_eddysvis', value);
  }

  bool _freshvegvis = false;
  bool get freshvegvis => _freshvegvis;
  set freshvegvis(bool value) {
    _freshvegvis = value;
    prefs.setBool('ff_freshvegvis', value);
  }

  bool _Frozenvegvis = false;
  bool get Frozenvegvis => _Frozenvegvis;
  set Frozenvegvis(bool value) {
    _Frozenvegvis = value;
    prefs.setBool('ff_Frozenvegvis', value);
  }

  bool _Restvis = false;
  bool get Restvis => _Restvis;
  set Restvis(bool value) {
    _Restvis = value;
    prefs.setBool('ff_Restvis', value);
  }

  bool _Freshjuicevis = false;
  bool get Freshjuicevis => _Freshjuicevis;
  set Freshjuicevis(bool value) {
    _Freshjuicevis = value;
    prefs.setBool('ff_Freshjuicevis', value);
  }

  bool _Tahinivis = false;
  bool get Tahinivis => _Tahinivis;
  set Tahinivis(bool value) {
    _Tahinivis = value;
    prefs.setBool('ff_Tahinivis', value);
  }

  bool _Pastriesvis = false;
  bool get Pastriesvis => _Pastriesvis;
  set Pastriesvis(bool value) {
    _Pastriesvis = value;
    prefs.setBool('ff_Pastriesvis', value);
  }

  bool _AbuAufvis = false;
  bool get AbuAufvis => _AbuAufvis;
  set AbuAufvis(bool value) {
    _AbuAufvis = value;
    prefs.setBool('ff_AbuAufvis', value);
  }

  bool _customercheck = false;
  bool get customercheck => _customercheck;
  set customercheck(bool value) {
    _customercheck = value;
    prefs.setBool('ff_customercheck', value);
  }

  bool _customerVis = false;
  bool get customerVis => _customerVis;
  set customerVis(bool value) {
    _customerVis = value;
    prefs.setBool('ff_customerVis', value);
  }

  String _Severip = '10.0.48.218';
  String get Severip => _Severip;
  set Severip(String value) {
    _Severip = value;
    prefs.setString('ff_Severip', value);
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
