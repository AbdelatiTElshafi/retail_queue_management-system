import '/backend/api_requests/api_calls.dart';
import '/components/erorr/erorr_widget.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class TheSelectionScreenModel
    extends FlutterFlowModel<TheSelectionScreenWidget> {
  ///  Local state fields for this page.

  bool loadingVisability = false;

  bool error = false;

  bool visable = true;

  bool nonVisable = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
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
    String? departchar,
  }) async {
    ApiCallResponse? getMeatServingnoApiResult;

    loadingVisability = true;
    getMeatServingnoApiResult =
        await TakeANumberAPIGroupGroup.getDepartServingnoCall.call(
      departName: depart,
    );

    if ((getMeatServingnoApiResult.succeeded ?? true)) {
      context.pushNamed(
        TicketScreenWidget.routeName,
        queryParameters: {
          'deptCode': serializeParam(
            departDisplayName,
            ParamType.String,
          ),
          'peopleAhead': serializeParam(
            TakeANumberAPIGroupGroup.getDepartServingnoCall.peopleAhead(
              (getMeatServingnoApiResult.jsonBody ?? ''),
            ),
            ParamType.String,
          ),
          'nowServing': serializeParam(
            TakeANumberAPIGroupGroup.getDepartServingnoCall.nowServing(
              (getMeatServingnoApiResult.jsonBody ?? ''),
            ),
            ParamType.String,
          ),
          'depart': serializeParam(
            depart,
            ParamType.String,
          ),
          'departChar': serializeParam(
            departchar,
            ParamType.String,
          ),
        }.withoutNulls,
      );

      loadingVisability = false;
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

  Future printNumber(
    BuildContext context, {
    String? depart,
    required String? ticketNumber,
    String? peopleAhead,
    String? departname,
    String? departchar,
  }) async {
    ApiCallResponse? printNumberApiResult;

    printNumberApiResult = await TakeANumberAPIGroupGroup.printNumberCall.call(
      depart: depart,
    );

    if ((printNumberApiResult.succeeded ?? true)) {
      await actions.printQueueTicket(
        ticketNumber!,
        peopleAhead!,
        departname!,
        departchar!,
      );
    }
  }

  Future wholePrint(
    BuildContext context, {
    String? depart,
    String? departDisplayName,
    String? departChar,
  }) async {
    ApiCallResponse? getServingnoApiResult;
    ApiCallResponse? printNumberApiResult;

    loadingVisability = true;
    getServingnoApiResult =
        await TakeANumberAPIGroupGroup.getDepartServingnoCall.call(
      departName: depart,
    );

    if ((getServingnoApiResult.succeeded ?? true)) {
      printNumberApiResult =
          await TakeANumberAPIGroupGroup.printNumberCall.call(
        depart: depart,
      );

      if ((printNumberApiResult.succeeded ?? true)) {
        await actions.printQueueTicket(
          TakeANumberAPIGroupGroup.printNumberCall.ticketNumber(
            (printNumberApiResult.jsonBody ?? ''),
          )!,
          TakeANumberAPIGroupGroup.getDepartServingnoCall.peopleAhead(
            (getServingnoApiResult.jsonBody ?? ''),
          )!,
          departDisplayName!,
          departChar!,
        );
      }
      loadingVisability = false;
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
