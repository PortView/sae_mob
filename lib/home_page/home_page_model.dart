import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/pedido_unico_editar_widget.dart';
import '/components/pedido_unico_incluir_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CKSelect widget.

  Map<PedidoRecord, bool> cKSelectValueMap = {};
  List<PedidoRecord> get cKSelectCheckedItems =>
      cKSelectValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
