import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/widgets/display_received_data/display_received_data_widget.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'device_page_widget.dart' show DevicePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DevicePageModel extends FlutterFlowModel<DevicePageWidget> {
  ///  Local state fields for this page.

  int? currentRssi;

  String? receivedValue;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? rssiUpdateTimer;
  // Stores action output result for [Custom Action - getRssi] action in DevicePage widget.
  int? updatedRssi;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for DisplayReceivedData component.
  late DisplayReceivedDataModel displayReceivedDataModel;
  // State field(s) for TeleType widget.
  String? teleTypeValue;
  FormFieldController<String>? teleTypeValueController;
  // State field(s) for ssidfield widget.
  FocusNode? ssidfieldFocusNode;
  TextEditingController? ssidfieldController;
  String? Function(BuildContext, String?)? ssidfieldControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for apn widget.
  FocusNode? apnFocusNode;
  TextEditingController? apnController;
  String? Function(BuildContext, String?)? apnControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    strengthIndicatorModel =
        createModel(context, () => StrengthIndicatorModel());
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    rssiUpdateTimer?.cancel();
    strengthIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    displayReceivedDataModel.dispose();
    ssidfieldFocusNode?.dispose();
    ssidfieldController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    apnFocusNode?.dispose();
    apnController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
