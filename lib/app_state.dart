import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
      if (prefs.containsKey('ff_MeterCfgJson')) {
        try {
          _MeterCfgJson = jsonDecode(prefs.getString('ff_MeterCfgJson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _meters = prefs
              .getStringList('ff_meters')
              ?.map((x) {
                try {
                  return MetercfgStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _meters;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _MeterCfgJson = jsonDecode(
      '{\"meters\":[{\"meter_id\":1,\"name\":\"Meter1\",\"meter_type\":\"energy\",\"meter_model\":\"ELMEASURE\",\"port\":\"/dev/ttyUSB0\",\"baud_rate\":9600,\"data_bits\":8,\"parity\":\"none\",\"stop_bits\":1,\"registers\":[{\"register_name\":\"voltage\",\"register_address\":100,\"register_type\":\"input\",\"data_type\":\"int16\",\"scale_factor\":0.1,\"endianness\":\"big_endian\"},{\"register_name\":\"current\",\"register_address\":200,\"register_type\":\"holding\",\"data_type\":\"uint32\",\"endianness\":\"little_endian\"}]},{\"meter_id\":2,\"name\":\"Meter2\",\"meter_type\":\"energy\",\"meter_model\":\"ELMEASURE\",\"port\":\"/dev/ttyUSB1\",\"baud_rate\":19200,\"data_bits\":8,\"parity\":\"even\",\"stop_bits\":1,\"registers\":[{\"register_name\":\"frequency\",\"register_address\":300,\"register_type\":\"input\",\"data_type\":\"float32\",\"scale_factor\":0.01,\"endianness\":\"big_endian\"},{\"register_name\":\"power_factor\",\"register_address\":400,\"register_type\":\"holding\",\"data_type\":\"int32\",\"endianness\":\"little_endian\"}]}]}');
  dynamic get MeterCfgJson => _MeterCfgJson;
  set MeterCfgJson(dynamic _value) {
    _MeterCfgJson = _value;
    prefs.setString('ff_MeterCfgJson', jsonEncode(_value));
  }

  List<MetercfgStruct> _meters = [
    MetercfgStruct.fromSerializableMap(jsonDecode(
        '{\"meterName\":\"Meter1\",\"meterId\":\"1\",\"meterType\":\"ENERGY\",\"meterModel\":\"L&T 5310\",\"baudRate\":\"9600\",\"parity\":\"NONE\",\"prameters\":\"[\\\"{\\\\\\\"paramName\\\\\\\":\\\\\\\"Voltage\\\\\\\",\\\\\\\"paramAddr\\\\\\\":\\\\\\\"200\\\\\\\",\\\\\\\"paramReadType\\\\\\\":\\\\\\\"HOLDING\\\\\\\",\\\\\\\"paramDataType\\\\\\\":\\\\\\\"UIN32\\\\\\\",\\\\\\\"scalingFactor\\\\\\\":\\\\\\\"0.001\\\\\\\",\\\\\\\"ParamEndianness\\\\\\\":\\\\\\\"MIDBIG\\\\\\\"}\\\",\\\"{\\\\\\\"paramName\\\\\\\":\\\\\\\"PowerFactor\\\\\\\",\\\\\\\"paramAddr\\\\\\\":\\\\\\\"210\\\\\\\",\\\\\\\"paramReadType\\\\\\\":\\\\\\\"HOLDING\\\\\\\",\\\\\\\"paramDataType\\\\\\\":\\\\\\\"UIN32\\\\\\\",\\\\\\\"scalingFactor\\\\\\\":\\\\\\\"0.001\\\\\\\",\\\\\\\"ParamEndianness\\\\\\\":\\\\\\\"MIDBIG\\\\\\\"}\\\"]\"}')),
    MetercfgStruct.fromSerializableMap(jsonDecode(
        '{\"meterName\":\"Meter2\",\"meterId\":\"2\",\"meterType\":\"ENERGY\",\"meterModel\":\"ELMEASURE 5410\",\"baudRate\":\"9600\",\"parity\":\"NONE\",\"prameters\":\"[\\\"{\\\\\\\"paramName\\\\\\\":\\\\\\\"Voltage\\\\\\\",\\\\\\\"paramAddr\\\\\\\":\\\\\\\"200\\\\\\\",\\\\\\\"paramReadType\\\\\\\":\\\\\\\"HOLDING\\\\\\\",\\\\\\\"paramDataType\\\\\\\":\\\\\\\"UIN32\\\\\\\",\\\\\\\"scalingFactor\\\\\\\":\\\\\\\"0.1\\\\\\\",\\\\\\\"ParamEndianness\\\\\\\":\\\\\\\"BIG\\\\\\\"}\\\"]\"}'))
  ];
  List<MetercfgStruct> get meters => _meters;
  set meters(List<MetercfgStruct> _value) {
    _meters = _value;
    prefs.setStringList('ff_meters', _value.map((x) => x.serialize()).toList());
  }

  void addToMeters(MetercfgStruct _value) {
    _meters.add(_value);
    prefs.setStringList(
        'ff_meters', _meters.map((x) => x.serialize()).toList());
  }

  void removeFromMeters(MetercfgStruct _value) {
    _meters.remove(_value);
    prefs.setStringList(
        'ff_meters', _meters.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMeters(int _index) {
    _meters.removeAt(_index);
    prefs.setStringList(
        'ff_meters', _meters.map((x) => x.serialize()).toList());
  }

  void updateMetersAtIndex(
    int _index,
    MetercfgStruct Function(MetercfgStruct) updateFn,
  ) {
    _meters[_index] = updateFn(_meters[_index]);
    prefs.setStringList(
        'ff_meters', _meters.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMeters(int _index, MetercfgStruct _value) {
    _meters.insert(_index, _value);
    prefs.setStringList(
        'ff_meters', _meters.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
