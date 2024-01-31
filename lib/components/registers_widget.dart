import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registers_model.dart';
export 'registers_model.dart';

class RegistersWidget extends StatefulWidget {
  const RegistersWidget({super.key});

  @override
  State<RegistersWidget> createState() => _RegistersWidgetState();
}

class _RegistersWidgetState extends State<RegistersWidget> {
  late RegistersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistersModel());

    _model.regNameController ??= TextEditingController();
    _model.regNameFocusNode ??= FocusNode();

    _model.regAddrController ??= TextEditingController();
    _model.regAddrFocusNode ??= FocusNode();

    _model.regTypeController ??= TextEditingController();
    _model.regTypeFocusNode ??= FocusNode();

    _model.regDtypeController ??= TextEditingController();
    _model.regDtypeFocusNode ??= FocusNode();

    _model.regSfController ??= TextEditingController();
    _model.regSfFocusNode ??= FocusNode();

    _model.regEndianessController ??= TextEditingController();
    _model.regEndianessFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regNameController,
              focusNode: _model.regNameFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator: _model.regNameControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regAddrController,
              focusNode: _model.regAddrFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator: _model.regAddrControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regTypeController,
              focusNode: _model.regTypeFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator: _model.regTypeControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regDtypeController,
              focusNode: _model.regDtypeFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator:
                  _model.regDtypeControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regSfController,
              focusNode: _model.regSfFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator: _model.regSfControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.regEndianessController,
              focusNode: _model.regEndianessFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Registster Name',
                hintText: 'voltage',
                hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              validator:
                  _model.regEndianessControllerValidator.asValidator(context),
            ),
          ),
        ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
      ),
    );
  }
}
