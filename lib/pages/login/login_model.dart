import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for emailAddressCadastro widget.
  TextEditingController? emailAddressCadastroController;
  String? Function(BuildContext, String?)?
      emailAddressCadastroControllerValidator;
  // State field(s) for passwordCadastro1 widget.
  TextEditingController? passwordCadastro1Controller;
  late bool passwordCadastro1Visibility;
  String? Function(BuildContext, String?)? passwordCadastro1ControllerValidator;
  // State field(s) for passwordCadastro2 widget.
  TextEditingController? passwordCadastro2Controller;
  late bool passwordCadastro2Visibility;
  String? Function(BuildContext, String?)? passwordCadastro2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCadastro1Visibility = false;
    passwordCadastro2Visibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    emailAddressCadastroController?.dispose();
    passwordCadastro1Controller?.dispose();
    passwordCadastro2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
