// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetercfgStruct extends BaseStruct {
  MetercfgStruct({
    String? meterName,
    int? meterId,
    MeterType? meterType,
    String? meterModel,
    int? baudRate,
    Parity? parity,
    List<RegistersStruct>? prameters,
  })  : _meterName = meterName,
        _meterId = meterId,
        _meterType = meterType,
        _meterModel = meterModel,
        _baudRate = baudRate,
        _parity = parity,
        _prameters = prameters;

  // "meterName" field.
  String? _meterName;
  String get meterName => _meterName ?? 'Test meter';
  set meterName(String? val) => _meterName = val;
  bool hasMeterName() => _meterName != null;

  // "meterId" field.
  int? _meterId;
  int get meterId => _meterId ?? 0;
  set meterId(int? val) => _meterId = val;
  void incrementMeterId(int amount) => _meterId = meterId + amount;
  bool hasMeterId() => _meterId != null;

  // "meterType" field.
  MeterType? _meterType;
  MeterType get meterType => _meterType ?? MeterType.ENERGY;
  set meterType(MeterType? val) => _meterType = val;
  bool hasMeterType() => _meterType != null;

  // "meterModel" field.
  String? _meterModel;
  String get meterModel => _meterModel ?? 'EN5310';
  set meterModel(String? val) => _meterModel = val;
  bool hasMeterModel() => _meterModel != null;

  // "baudRate" field.
  int? _baudRate;
  int get baudRate => _baudRate ?? 9600;
  set baudRate(int? val) => _baudRate = val;
  void incrementBaudRate(int amount) => _baudRate = baudRate + amount;
  bool hasBaudRate() => _baudRate != null;

  // "parity" field.
  Parity? _parity;
  Parity get parity => _parity ?? Parity.NONE;
  set parity(Parity? val) => _parity = val;
  bool hasParity() => _parity != null;

  // "prameters" field.
  List<RegistersStruct>? _prameters;
  List<RegistersStruct> get prameters => _prameters ?? const [];
  set prameters(List<RegistersStruct>? val) => _prameters = val;
  void updatePrameters(Function(List<RegistersStruct>) updateFn) =>
      updateFn(_prameters ??= []);
  bool hasPrameters() => _prameters != null;

  static MetercfgStruct fromMap(Map<String, dynamic> data) => MetercfgStruct(
        meterName: data['meterName'] as String?,
        meterId: castToType<int>(data['meterId']),
        meterType: deserializeEnum<MeterType>(data['meterType']),
        meterModel: data['meterModel'] as String?,
        baudRate: castToType<int>(data['baudRate']),
        parity: deserializeEnum<Parity>(data['parity']),
        prameters: getStructList(
          data['prameters'],
          RegistersStruct.fromMap,
        ),
      );

  static MetercfgStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetercfgStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'meterName': _meterName,
        'meterId': _meterId,
        'meterType': _meterType?.serialize(),
        'meterModel': _meterModel,
        'baudRate': _baudRate,
        'parity': _parity?.serialize(),
        'prameters': _prameters?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'meterName': serializeParam(
          _meterName,
          ParamType.String,
        ),
        'meterId': serializeParam(
          _meterId,
          ParamType.int,
        ),
        'meterType': serializeParam(
          _meterType,
          ParamType.Enum,
        ),
        'meterModel': serializeParam(
          _meterModel,
          ParamType.String,
        ),
        'baudRate': serializeParam(
          _baudRate,
          ParamType.int,
        ),
        'parity': serializeParam(
          _parity,
          ParamType.Enum,
        ),
        'prameters': serializeParam(
          _prameters,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static MetercfgStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetercfgStruct(
        meterName: deserializeParam(
          data['meterName'],
          ParamType.String,
          false,
        ),
        meterId: deserializeParam(
          data['meterId'],
          ParamType.int,
          false,
        ),
        meterType: deserializeParam<MeterType>(
          data['meterType'],
          ParamType.Enum,
          false,
        ),
        meterModel: deserializeParam(
          data['meterModel'],
          ParamType.String,
          false,
        ),
        baudRate: deserializeParam(
          data['baudRate'],
          ParamType.int,
          false,
        ),
        parity: deserializeParam<Parity>(
          data['parity'],
          ParamType.Enum,
          false,
        ),
        prameters: deserializeStructParam<RegistersStruct>(
          data['prameters'],
          ParamType.DataStruct,
          true,
          structBuilder: RegistersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MetercfgStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MetercfgStruct &&
        meterName == other.meterName &&
        meterId == other.meterId &&
        meterType == other.meterType &&
        meterModel == other.meterModel &&
        baudRate == other.baudRate &&
        parity == other.parity &&
        listEquality.equals(prameters, other.prameters);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [meterName, meterId, meterType, meterModel, baudRate, parity, prameters]);
}

MetercfgStruct createMetercfgStruct({
  String? meterName,
  int? meterId,
  MeterType? meterType,
  String? meterModel,
  int? baudRate,
  Parity? parity,
}) =>
    MetercfgStruct(
      meterName: meterName,
      meterId: meterId,
      meterType: meterType,
      meterModel: meterModel,
      baudRate: baudRate,
      parity: parity,
    );
