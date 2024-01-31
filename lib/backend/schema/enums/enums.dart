import 'package:collection/collection.dart';

enum ReadType {
  INPUT,
  HOLDING,
}

enum Parity {
  NONE,
  EVEN,
  ODD,
}

enum DataType {
  INT32,
  UIN32,
  FLOAT,
}

enum Endiness {
  LITTLE,
  BIG,
  MIDBIG,
  MIDLITTLE,
}

enum MeterType {
  ENERGY,
  WATER,
  GAS,
  PULSE,
  PRESSURE,
  LEVEL,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ReadType):
      return ReadType.values.deserialize(value) as T?;
    case (Parity):
      return Parity.values.deserialize(value) as T?;
    case (DataType):
      return DataType.values.deserialize(value) as T?;
    case (Endiness):
      return Endiness.values.deserialize(value) as T?;
    case (MeterType):
      return MeterType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
