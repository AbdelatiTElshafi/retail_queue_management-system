// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartmentTypeStruct extends BaseStruct {
  DepartmentTypeStruct({
    List<String>? nameEn,
    List<String>? nameAr,
    List<bool>? isVisible,
  })  : _nameEn = nameEn,
        _nameAr = nameAr,
        _isVisible = isVisible;

  // "nameEn" field.
  List<String>? _nameEn;
  List<String> get nameEn => _nameEn ?? const [];
  set nameEn(List<String>? val) => _nameEn = val;

  void updateNameEn(Function(List<String>) updateFn) {
    updateFn(_nameEn ??= []);
  }

  bool hasNameEn() => _nameEn != null;

  // "nameAr" field.
  List<String>? _nameAr;
  List<String> get nameAr => _nameAr ?? const [];
  set nameAr(List<String>? val) => _nameAr = val;

  void updateNameAr(Function(List<String>) updateFn) {
    updateFn(_nameAr ??= []);
  }

  bool hasNameAr() => _nameAr != null;

  // "isVisible" field.
  List<bool>? _isVisible;
  List<bool> get isVisible => _isVisible ?? const [];
  set isVisible(List<bool>? val) => _isVisible = val;

  void updateIsVisible(Function(List<bool>) updateFn) {
    updateFn(_isVisible ??= []);
  }

  bool hasIsVisible() => _isVisible != null;

  static DepartmentTypeStruct fromMap(Map<String, dynamic> data) =>
      DepartmentTypeStruct(
        nameEn: getDataList(data['nameEn']),
        nameAr: getDataList(data['nameAr']),
        isVisible: getDataList(data['isVisible']),
      );

  static DepartmentTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DepartmentTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nameEn': _nameEn,
        'nameAr': _nameAr,
        'isVisible': _isVisible,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nameEn': serializeParam(
          _nameEn,
          ParamType.String,
          isList: true,
        ),
        'nameAr': serializeParam(
          _nameAr,
          ParamType.String,
          isList: true,
        ),
        'isVisible': serializeParam(
          _isVisible,
          ParamType.bool,
          isList: true,
        ),
      }.withoutNulls;

  static DepartmentTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DepartmentTypeStruct(
        nameEn: deserializeParam<String>(
          data['nameEn'],
          ParamType.String,
          true,
        ),
        nameAr: deserializeParam<String>(
          data['nameAr'],
          ParamType.String,
          true,
        ),
        isVisible: deserializeParam<bool>(
          data['isVisible'],
          ParamType.bool,
          true,
        ),
      );

  @override
  String toString() => 'DepartmentTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DepartmentTypeStruct &&
        listEquality.equals(nameEn, other.nameEn) &&
        listEquality.equals(nameAr, other.nameAr) &&
        listEquality.equals(isVisible, other.isVisible);
  }

  @override
  int get hashCode => const ListEquality().hash([nameEn, nameAr, isVisible]);
}

DepartmentTypeStruct createDepartmentTypeStruct() => DepartmentTypeStruct();
