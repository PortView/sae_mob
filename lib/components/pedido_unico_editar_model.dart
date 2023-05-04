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

class PedidoUnicoEditarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNome widget.
  TextEditingController? txtNomeController;
  String? Function(BuildContext, String?)? txtNomeControllerValidator;
  // State field(s) for ttDecricao widget.
  TextEditingController? ttDecricaoController;
  String? Function(BuildContext, String?)? ttDecricaoControllerValidator;
  // State field(s) for txtQtde widget.
  TextEditingController? txtQtdeController;
  final txtQtdeMask = MaskTextInputFormatter(mask: '##,##');
  String? Function(BuildContext, String?)? txtQtdeControllerValidator;
  // State field(s) for txtPreco widget.
  TextEditingController? txtPrecoController;
  final txtPrecoMask = MaskTextInputFormatter(mask: '###,##');
  String? Function(BuildContext, String?)? txtPrecoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNomeController?.dispose();
    ttDecricaoController?.dispose();
    txtQtdeController?.dispose();
    txtPrecoController?.dispose();
  }

  /// Additional helper methods are added here.

}
