import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/tarefas_base_editar_widget.dart';
import '/components/tarefas_base_novo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GridViewBaseModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for swTarefasAtivos widget.
  bool? swTarefasAtivosValue;
  // State field(s) for tfBuscaDescrTar widget.
  TextEditingController? tfBuscaDescrTarController;
  String? Function(BuildContext, String?)? tfBuscaDescrTarControllerValidator;
  // State field(s) for Checkbox widget.

  Map<TarefasBaseRecord, bool> checkboxValueMap = {};
  List<TarefasBaseRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tfBuscaDescrTarController?.dispose();
  }

  /// Additional helper methods are added here.

}
