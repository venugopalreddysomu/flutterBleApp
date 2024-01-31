import '/backend/schema/structs/index.dart';
import '/components/register_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'meters_comp_widget.dart' show MetersCompWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MetersCompModel extends FlutterFlowModel<MetersCompWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for MeterName widget.
  FocusNode? meterNameFocusNode;
  TextEditingController? meterNameController;
  String? Function(BuildContext, String?)? meterNameControllerValidator;
  // State field(s) for MeterId widget.
  FocusNode? meterIdFocusNode;
  TextEditingController? meterIdController;
  String? Function(BuildContext, String?)? meterIdControllerValidator;
  // State field(s) for MeterType widget.
  FocusNode? meterTypeFocusNode;
  TextEditingController? meterTypeController;
  String? Function(BuildContext, String?)? meterTypeControllerValidator;
  // State field(s) for MeterModel widget.
  FocusNode? meterModelFocusNode;
  TextEditingController? meterModelController;
  String? Function(BuildContext, String?)? meterModelControllerValidator;
  // State field(s) for BaudRate widget.
  FocusNode? baudRateFocusNode;
  TextEditingController? baudRateController;
  String? Function(BuildContext, String?)? baudRateControllerValidator;
  // State field(s) for Parity widget.
  FocusNode? parityFocusNode;
  TextEditingController? parityController;
  String? Function(BuildContext, String?)? parityControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    expandableController1.dispose();
    meterNameFocusNode?.dispose();
    meterNameController?.dispose();

    meterIdFocusNode?.dispose();
    meterIdController?.dispose();

    meterTypeFocusNode?.dispose();
    meterTypeController?.dispose();

    meterModelFocusNode?.dispose();
    meterModelController?.dispose();

    baudRateFocusNode?.dispose();
    baudRateController?.dispose();

    parityFocusNode?.dispose();
    parityController?.dispose();

    expandableController2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
