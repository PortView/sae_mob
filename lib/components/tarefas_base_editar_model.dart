import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TarefasBaseEditarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwAtivo widget.
  bool? swAtivoValue;
  // State field(s) for TxtOrdem widget.
  TextEditingController? txtOrdemController;
  final txtOrdemMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? txtOrdemControllerValidator;
  // State field(s) for TxtDescr widget.
  TextEditingController? txtDescrController;
  String? Function(BuildContext, String?)? txtDescrControllerValidator;
  // State field(s) for TxtTE widget.
  TextEditingController? txtTEController;
  final txtTEMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? txtTEControllerValidator;
  // State field(s) for SwMedicao widget.
  bool? swMedicaoValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtOrdemController?.dispose();
    txtDescrController?.dispose();
    txtTEController?.dispose();
  }

  /// Additional helper methods are added here.

}
