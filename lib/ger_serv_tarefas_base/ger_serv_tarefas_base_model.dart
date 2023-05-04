import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/barra_sup_logado_widget.dart';
import '/components/tarefas_base_editar_widget.dart';
import '/components/tarefas_base_novo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GerServTarefasBaseModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool flagTarefasBaseView = true;

  int? qtdeTarefasBase = 0;

  ///  State fields for stateful widgets in this page.

  // Model for barraSupLogado component.
  late BarraSupLogadoModel barraSupLogadoModel;
  // State field(s) for swTarefasAtivos widget.
  bool? swTarefasAtivosValue;
  // State field(s) for tfBuscaDescrTar widget.
  TextEditingController? tfBuscaDescrTarController;
  String? Function(BuildContext, String?)? tfBuscaDescrTarControllerValidator;
  // State field(s) for Checkbox widget.

  Map<TarefasBaseRecord, bool> checkboxValueMap1 = {};
  List<TarefasBaseRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for swAtivosServ widget.
  bool? swAtivosServValue;
  // State field(s) for tfBuscaDescrServ widget.
  TextEditingController? tfBuscaDescrServController;
  String? Function(BuildContext, String?)? tfBuscaDescrServControllerValidator;
  // State field(s) for Checkbox widget.

  Map<ServicosBaseRecord, bool> checkboxValueMap2 = {};
  List<ServicosBaseRecord> get checkboxCheckedItems2 =>
      checkboxValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    barraSupLogadoModel = createModel(context, () => BarraSupLogadoModel());
  }

  void dispose() {
    barraSupLogadoModel.dispose();
    tfBuscaDescrTarController?.dispose();
    tfBuscaDescrServController?.dispose();
  }

  /// Additional helper methods are added here.

}
