// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistersStruct extends BaseStruct {
  RegistersStruct({
    String? paramName,
    String? paramAddr,
    ReadType? paramReadType,
    DataType? paramDataType,
    double? scalingFactor,
    Endiness? paramEndianness,
  })  : _paramName = paramName,
        _paramAddr = paramAddr,
        _paramReadType = paramReadType,
        _paramDataType = paramDataType,
        _scalingFactor = scalingFactor,
        _paramEndianness = paramEndianness;

  // "paramName" field.
  String? _paramName;
  String get paramName => _paramName ?? '';
  set paramName(String? val) => _paramName = val;
  bool hasParamName() => _paramName != null;

  // "paramAddr" field.
  String? _paramAddr;
  String get paramAddr => _paramAddr ?? '';
  set paramAddr(String? val) => _paramAddr = val;
  bool hasParamAddr() => _paramAddr != null;

  // "paramReadType" field.
  ReadType? _paramReadType;
  ReadType get paramReadType => _paramReadType ?? ReadType.HOLDING;
  set paramReadType(ReadType? val) => _paramReadType = val;
  bool hasParamReadType() => _paramReadType != null;

  // "paramDataType" field.
  DataType? _paramDataType;
  DataType get paramDataType => _paramDataType ?? DataType.UIN32;
  set paramDataType(DataType? val) => _paramDataType = val;
  bool hasParamDataType() => _paramDataType != null;

  // "scalingFactor" field.
  double? _scalingFactor;
  double get scalingFactor => _scalingFactor ?? 0.0;
  set scalingFactor(double? val) => _scalingFactor = val;
  void incrementScalingFactor(double amount) =>
      _scalingFactor = scalingFactor + amount;
  bool hasScalingFactor() => _scalingFactor != null;

  // "ParamEndianness" field.
  Endiness? _paramEndianness;
  Endiness get paramEndianness => _paramEndianness ?? Endiness.LITTLE;
  set paramEndianness(Endiness? val) => _paramEndianness = val;
  bool hasParamEndianness() => _paramEndianness != null;

  static RegistersStruct fromMap(Map<String, dynamic> data) => RegistersStruct(
        paramName: data['paramName'] as String?,
        paramAddr: data['paramAddr'] as String?,
        paramReadType: deserializeEnum<ReadType>(data['paramReadType']),
        paramDataType: deserializeEnum<DataType>(data['paramDataType']),
        scalingFactor: castToType<double>(data['scalingFactor']),
        paramEndianness: deserializeEnum<Endiness>(data['ParamEndianness']),
      );

  static RegistersStruct? maybeFromMap(dynamic data) => data is Map
      ? RegistersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'paramName': _paramName,
        'paramAddr': _paramAddr,
        'paramReadType': _paramReadType?.serialize(),
        'paramDataType': _paramDataType?.serialize(),
        'scalingFactor': _scalingFactor,
        'ParamEndianness': _paramEndianness?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paramName': serializeParam(
          _paramName,
          ParamType.String,
        ),
        'paramAddr': serializeParam(
          _paramAddr,
          ParamType.String,
        ),
        'paramReadType': serializeParam(
          _paramReadType,
          ParamType.Enum,
        ),
        'paramDataType': serializeParam(
          _paramDataType,
          ParamType.Enum,
        ),
        'scalingFactor': serializeParam(
          _scalingFactor,
          ParamType.double,
        ),
        'ParamEndianness': serializeParam(
          _paramEndianness,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static RegistersStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegistersStruct(
        paramName: deserializeParam(
          data['paramName'],
          ParamType.String,
          false,
        ),
        paramAddr: deserializeParam(
          data['paramAddr'],
          ParamType.String,
          false,
        ),
        paramReadType: deserializeParam<ReadType>(
          data['paramReadType'],
          ParamType.Enum,
          false,
        ),
        paramDataType: deserializeParam<DataType>(
          data['paramDataType'],
          ParamType.Enum,
          false,
        ),
        scalingFactor: deserializeParam(
          data['scalingFactor'],
          ParamType.double,
          false,
        ),
        paramEndianness: deserializeParam<Endiness>(
          data['ParamEndianness'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'RegistersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegistersStruct &&
        paramName == other.paramName &&
        paramAddr == other.paramAddr &&
        paramReadType == other.paramReadType &&
        paramDataType == other.paramDataType &&
        scalingFactor == other.scalingFactor &&
        paramEndianness == other.paramEndianness;
  }

  @override
  int get hashCode => const ListEquality().hash([
        paramName,
        paramAddr,
        paramReadType,
        paramDataType,
        scalingFactor,
        paramEndianness
      ]);
}

RegistersStruct createRegistersStruct({
  String? paramName,
  String? paramAddr,
  ReadType? paramReadType,
  DataType? paramDataType,
  double? scalingFactor,
  Endiness? paramEndianness,
}) =>
    RegistersStruct(
      paramName: paramName,
      paramAddr: paramAddr,
      paramReadType: paramReadType,
      paramDataType: paramDataType,
      scalingFactor: scalingFactor,
      paramEndianness: paramEndianness,
    );
