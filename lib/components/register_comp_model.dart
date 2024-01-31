import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_comp_widget.dart' show RegisterCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterCompModel extends FlutterFlowModel<RegisterCompWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for regName widget.
  FocusNode? regNameFocusNode;
  TextEditingController? regNameController;
  String? Function(BuildContext, String?)? regNameControllerValidator;
  // State field(s) for regAddr widget.
  FocusNode? regAddrFocusNode;
  TextEditingController? regAddrController;
  String? Function(BuildContext, String?)? regAddrControllerValidator;
  // State field(s) for regType widget.
  FocusNode? regTypeFocusNode;
  TextEditingController? regTypeController;
  String? Function(BuildContext, String?)? regTypeControllerValidator;
  // State field(s) for regDType widget.
  FocusNode? regDTypeFocusNode;
  TextEditingController? regDTypeController;
  String? Function(BuildContext, String?)? regDTypeControllerValidator;
  // State field(s) for sFactor widget.
  FocusNode? sFactorFocusNode;
  TextEditingController? sFactorController;
  String? Function(BuildContext, String?)? sFactorControllerValidator;
  // State field(s) for endianess widget.
  FocusNode? endianessFocusNode;
  TextEditingController? endianessController;
  String? Function(BuildContext, String?)? endianessControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    regNameFocusNode?.dispose();
    regNameController?.dispose();

    regAddrFocusNode?.dispose();
    regAddrController?.dispose();

    regTypeFocusNode?.dispose();
    regTypeController?.dispose();

    regDTypeFocusNode?.dispose();
    regDTypeController?.dispose();

    sFactorFocusNode?.dispose();
    sFactorController?.dispose();

    endianessFocusNode?.dispose();
    endianessController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
