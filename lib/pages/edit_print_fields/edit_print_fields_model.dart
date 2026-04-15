import '/backend/api_requests/api_calls.dart';
import '/components/erorr/erorr_widget.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'edit_print_fields_widget.dart' show EditPrintFieldsWidget;
import 'package:flutter/material.dart';

class EditPrintFieldsModel extends FlutterFlowModel<EditPrintFieldsWidget> {
  ///  Local state fields for this page.

  bool loadingVisability = false;

  bool error = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for branchname widget.
  FocusNode? branchnameFocusNode;
  TextEditingController? branchnameTextController;
  String? Function(BuildContext, String?)? branchnameTextControllerValidator;
  // State field(s) for Additionalnote widget.
  FocusNode? additionalnoteFocusNode;
  TextEditingController? additionalnoteTextController;
  String? Function(BuildContext, String?)?
      additionalnoteTextControllerValidator;
  // State field(s) for branchsizecount widget.
  int? branchsizecountValue;
  // State field(s) for deptsizecounter widget.
  int? deptsizecounterValue;
  // State field(s) for datesizecounter widget.
  int? datesizecounterValue;
  // State field(s) for ticketsizecounter widget.
  int? ticketsizecounterValue;
  // State field(s) for peoplesizecounter widget.
  int? peoplesizecounterValue;
  // State field(s) for Notesizecounter widget.
  int? notesizecounterValue;
  // Model for Loading component.
  late LoadingModel loadingModel;
  // Model for Erorr component.
  late ErorrModel erorrModel;

  @override
  void initState(BuildContext context) {
    loadingModel = createModel(context, () => LoadingModel());
    erorrModel = createModel(context, () => ErorrModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    branchnameFocusNode?.dispose();
    branchnameTextController?.dispose();

    additionalnoteFocusNode?.dispose();
    additionalnoteTextController?.dispose();

    loadingModel.dispose();
    erorrModel.dispose();
  }

  /// Action blocks.
  Future getDepartQueueData(
    BuildContext context, {
    required String? depart,
    required String? departDisplayName,
  }) async {
    ApiCallResponse? resetDepartQueueApiResult;

    loadingVisability = true;
    resetDepartQueueApiResult =
        await TakeANumberAPIGroupGroup.resetDepartQueueCall.call(
      depart: depart,
    );

    if ((resetDepartQueueApiResult.succeeded ?? true)) {
      loadingVisability = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Reset Done',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    } else {
      await Future.delayed(
        Duration(
          milliseconds: 2000,
        ),
      );
      loadingVisability = false;
      error = true;
      await Future.delayed(
        Duration(
          milliseconds: 4000,
        ),
      );
      error = false;
    }
  }
}
