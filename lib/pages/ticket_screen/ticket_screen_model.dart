import '/backend/api_requests/api_calls.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ticket_screen_widget.dart' show TicketScreenWidget;
import 'package:flutter/material.dart';

class TicketScreenModel extends FlutterFlowModel<TicketScreenWidget> {
  ///  Local state fields for this page.

  bool loadingticket = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (PrintNumber)] action in Button widget.
  ApiCallResponse? printNumberApiResult;
  // Model for Loading component.
  late LoadingModel loadingModel;

  @override
  void initState(BuildContext context) {
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    loadingModel.dispose();
  }
}
