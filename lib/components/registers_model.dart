import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registers_widget.dart' show RegistersWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistersModel extends FlutterFlowModel<RegistersWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for regName widget.
  FocusNode? regNameFocusNode;
  TextEditingController? regNameController;
  String? Function(BuildContext, String?)? regNameControllerValidator;
  // State field(s) for RegAddr widget.
  FocusNode? regAddrFocusNode;
  TextEditingController? regAddrController;
  String? Function(BuildContext, String?)? regAddrControllerValidator;
  // State field(s) for regType widget.
  FocusNode? regTypeFocusNode;
  TextEditingController? regTypeController;
  String? Function(BuildContext, String?)? regTypeControllerValidator;
  // State field(s) for regDtype widget.
  FocusNode? regDtypeFocusNode;
  TextEditingController? regDtypeController;
  String? Function(BuildContext, String?)? regDtypeControllerValidator;
  // State field(s) for regSf widget.
  FocusNode? regSfFocusNode;
  TextEditingController? regSfController;
  String? Function(BuildContext, String?)? regSfControllerValidator;
  // State field(s) for regEndianess widget.
  FocusNode? regEndianessFocusNode;
  TextEditingController? regEndianessController;
  String? Function(BuildContext, String?)? regEndianessControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    regNameFocusNode?.dispose();
    regNameController?.dispose();

    regAddrFocusNode?.dispose();
    regAddrController?.dispose();

    regTypeFocusNode?.dispose();
    regTypeController?.dispose();

    regDtypeFocusNode?.dispose();
    regDtypeController?.dispose();

    regSfFocusNode?.dispose();
    regSfController?.dispose();

    regEndianessFocusNode?.dispose();
    regEndianessController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
