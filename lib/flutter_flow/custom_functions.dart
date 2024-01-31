import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

String? makeJsonfromStrings(
  String? ssid,
  String? password,
  String? apn,
  String? commType,
) {
  // create a json string from provided 4 string arguments and return
  final Map<String, dynamic> jsonMap = {
    'ssid': ssid,
    'password': password,
    'apn': apn,
    'commType': commType,
  };
  final String jsonString = json.encode(jsonMap);
  return jsonString;
}
