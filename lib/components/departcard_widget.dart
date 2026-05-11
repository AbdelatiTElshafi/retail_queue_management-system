import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'departcard_model.dart';
export 'departcard_model.dart';

class DepartcardWidget extends StatefulWidget {
  const DepartcardWidget({super.key});

  @override
  State<DepartcardWidget> createState() => _DepartcardWidgetState();
}

class _DepartcardWidgetState extends State<DepartcardWidget> {
  late DepartcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DepartcardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().FreshMeatVis,
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Container(
                  width: 12.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5A623),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Icon(
                        FFIcons.kfreshMeat,
                        color: Color(0xFF3A3F47),
                        size: 85.0,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fresh Meat',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                color: Color(0xFF3A3F47),
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'اللحوم الطازجه',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                color: Color(0xFF3A3F47),
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
