import '/backend/backend.dart';
import '/components/barra_sup_logado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagTeste01Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for barraSupLogado component.
  late BarraSupLogadoModel barraSupLogadoModel;
  // State field(s) for swTarefasAtivos widget.
  bool? swTarefasAtivosValue;
  // State field(s) for tfBuscaDescr widget.
  TextEditingController? tfBuscaDescrController;
  String? Function(BuildContext, String?)? tfBuscaDescrControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    barraSupLogadoModel = createModel(context, () => BarraSupLogadoModel());
  }

  void dispose() {
    barraSupLogadoModel.dispose();
    tfBuscaDescrController?.dispose();
  }

  /// Additional helper methods are added here.

}
