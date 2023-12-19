import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboarding_chat_widget.dart' show OnboardingChatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingChatModel extends FlutterFlowModel<OnboardingChatWidget> {
  ///  Local state fields for this page.

  dynamic chatHistory;

  String inputType = '\'text\'';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptController;
  String? Function(BuildContext, String?)? promptControllerValidator;
  // State field(s) for prompt widget.
  String? promptValue;
  FormFieldController<String>? promptValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    promptFocusNode?.dispose();
    promptController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
