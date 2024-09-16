import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_member_page_widget.dart' show CreateMemberPageWidget;
import 'package:flutter/material.dart';

class CreateMemberPageModel extends FlutterFlowModel<CreateMemberPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for resName widget.
  FocusNode? resNameFocusNode;
  TextEditingController? resNameTextController;
  String? Function(BuildContext, String?)? resNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (createMember)] action in Button widget.
  ApiCallResponse? apiResultoaj;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resNameFocusNode?.dispose();
    resNameTextController?.dispose();
  }
}
