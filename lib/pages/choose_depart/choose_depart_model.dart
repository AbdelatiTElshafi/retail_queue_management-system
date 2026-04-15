import '/backend/api_requests/api_calls.dart';
import '/components/erorr/erorr_widget.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'choose_depart_widget.dart' show ChooseDepartWidget;
import 'package:flutter/material.dart';

class ChooseDepartModel extends FlutterFlowModel<ChooseDepartWidget> {
  ///  Local state fields for this page.

  bool loadingVisability = false;

  bool error = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for Freshmeatcheck widget.
  bool? freshmeatcheckValue;
  // State field(s) for Poultrycheck widget.
  bool? poultrycheckValue;
  // State field(s) for Fishcheck widget.
  bool? fishcheckValue;
  // State field(s) for Spicescheck widget.
  bool? spicescheckValue;
  // State field(s) for Frozencheck widget.
  bool? frozencheckValue;
  // State field(s) for Bakerycheck widget.
  bool? bakerycheckValue;
  // State field(s) for Grocerycheck widget.
  bool? grocerycheckValue;
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
