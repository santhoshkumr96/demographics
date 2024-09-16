import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_family_page_widget.dart' show CreateFamilyPageWidget;
import 'package:flutter/material.dart';

class CreateFamilyPageModel extends FlutterFlowModel<CreateFamilyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for resName widget.
  FocusNode? resNameFocusNode;
  TextEditingController? resNameTextController;
  String? Function(BuildContext, String?)? resNameTextControllerValidator;
  // State field(s) for mobNo widget.
  FocusNode? mobNoFocusNode;
  TextEditingController? mobNoTextController;
  String? Function(BuildContext, String?)? mobNoTextControllerValidator;
  // Stores action output result for [Backend Call - API (createFamily)] action in Button widget.
  ApiCallResponse? apiResultfwa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resNameFocusNode?.dispose();
    resNameTextController?.dispose();

    mobNoFocusNode?.dispose();
    mobNoTextController?.dispose();
  }
}
