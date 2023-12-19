import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile2_widget.dart' show Profile2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Profile2Model extends FlutterFlowModel<Profile2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for practiceFirst widget.
  FocusNode? practiceFirstFocusNode;
  TextEditingController? practiceFirstController;
  String? Function(BuildContext, String?)? practiceFirstControllerValidator;
  // State field(s) for practiceSecond widget.
  FocusNode? practiceSecondFocusNode;
  TextEditingController? practiceSecondController;
  String? Function(BuildContext, String?)? practiceSecondControllerValidator;
  // State field(s) for practiceThird widget.
  FocusNode? practiceThirdFocusNode;
  TextEditingController? practiceThirdController;
  String? Function(BuildContext, String?)? practiceThirdControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    practiceFirstFocusNode?.dispose();
    practiceFirstController?.dispose();

    practiceSecondFocusNode?.dispose();
    practiceSecondController?.dispose();

    practiceThirdFocusNode?.dispose();
    practiceThirdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
