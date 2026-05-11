import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_depart_model.dart';
export 'choose_depart_model.dart';

class ChooseDepartWidget extends StatefulWidget {
  const ChooseDepartWidget({super.key});

  static String routeName = 'ChooseDepart';
  static String routePath = '/chooseDepart';

  @override
  State<ChooseDepartWidget> createState() => _ChooseDepartWidgetState();
}

class _ChooseDepartWidgetState extends State<ChooseDepartWidget> {
  late ChooseDepartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseDepartModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          safeSetState(() {});
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3F47),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Choosing Visable Departments  | اختيار الاقسام الظاهرة ',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w800,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            fontSize: 35.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w800,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 12.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kfreshMeat,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Fresh Meat',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'اللحوم الطازجه',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.freshmeatcheckValue ??=
                                              FFAppState().freshcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() =>
                                                _model.freshmeatcheckValue =
                                                    newValue!);
                                            if (newValue!) {
                                              FFAppState().FreshMeatVis = true;
                                              FFAppState().freshcheck = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().FreshMeatVis = false;
                                              FFAppState().freshcheck = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Icon(
                                                  FFIcons.kchicken,
                                                  color: Color(0xFFF5A623),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Poultry',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'دواجن',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.poultrycheckValue ??=
                                              FFAppState().poultrycheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .poultrycheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().PoultryVis = true;
                                              FFAppState().poultrycheck = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().PoultryVis = false;
                                              FFAppState().poultrycheck = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kfish,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Fish',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'اسماك',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.fishcheckValue ??=
                                              FFAppState().fishcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .fishcheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().fishcheck = true;
                                              FFAppState().FishVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().fishcheck = false;
                                              FFAppState().FishVis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kspices,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Spices',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'عطارة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.spicescheckValue ??=
                                              FFAppState().spicescheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .spicescheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().spicescheck = true;
                                              FFAppState().SpicesVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().spicescheck = false;
                                              FFAppState().SpicesVis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kfrozen,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Frozen Meat',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'اللحوم المجمدة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.frozencheckValue ??=
                                              FFAppState().frozencheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .frozencheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().frozencheck = true;
                                              FFAppState().FrozenMeatVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().frozencheck = false;
                                              FFAppState().FrozenMeatVis =
                                                  false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 10.0),
                                                child: Icon(
                                                  FFIcons.kbakery,
                                                  color: Color(0xFFF5A623),
                                                  size: 40.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bakery',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'مخبوزات',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.bakerycheckValue ??=
                                              FFAppState().bakerycheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .bakerycheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().bakerycheck = true;
                                              FFAppState().BakeryVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().bakerycheck = false;
                                              FFAppState().BakeryVis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Icon(
                                                  FFIcons.kgrocery,
                                                  color: Color(0xFFF5A623),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Grocery',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'بقالة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.grocerycheckValue ??=
                                              FFAppState().grocerycheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .grocerycheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().grocerycheck = true;
                                              FFAppState().GroceryVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().grocerycheck = false;
                                              FFAppState().GroceryVis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons
                                                    .k3407550468966315847496371088742731949076319NRemovebgPreview,
                                                color: Color(0xFFF5A623),
                                                size: 70.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'EDDY\'S Bakery',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'مخبوزات ايدي',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.eddycheckValue ??=
                                              FFAppState().eddycheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .eddycheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().eddycheck = true;
                                              FFAppState().eddysvis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().eddycheck = false;
                                              FFAppState().eddysvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Icon(
                                                  FFIcons.kvegetable,
                                                  color: Color(0xFFF5A623),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                ' Fresh Vegetables',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'خضروات طازجة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.frshvegcheckValue ??=
                                              FFAppState().freshvegcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .frshvegcheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().freshvegcheck = true;
                                              FFAppState().freshvegvis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().freshvegcheck =
                                                  false;
                                              FFAppState().freshvegvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kfrozenGoods,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Frozen Vegetables',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'خضروات مجمدة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.frozenvegcheckValue ??=
                                              FFAppState().frozenvegcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() =>
                                                _model.frozenvegcheckValue =
                                                    newValue!);
                                            if (newValue!) {
                                              FFAppState().frozenvegcheck =
                                                  true;
                                              FFAppState().Frozenvegvis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().frozenvegcheck =
                                                  false;
                                              FFAppState().Frozenvegvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.krestaurant,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Restaurant',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'المطعم',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.restcheckValue ??=
                                              FFAppState().restcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .restcheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().restcheck = true;
                                              FFAppState().Restvis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().restcheck = false;
                                              FFAppState().Restvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kjuice,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Fresh  Juice',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'عصائر طازجة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.freshjuicecheckValue ??=
                                              FFAppState().freshjuicecheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() =>
                                                _model.freshjuicecheckValue =
                                                    newValue!);
                                            if (newValue!) {
                                              FFAppState().freshjuicecheck =
                                                  true;
                                              FFAppState().Freshjuicevis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().freshjuicecheck =
                                                  false;
                                              FFAppState().Freshjuicevis =
                                                  false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Icon(
                                                  FFIcons.ktahini,
                                                  color: Color(0xFFF5A623),
                                                  size: 60.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Tahini',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'الطحينة',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.tahinacheckValue ??=
                                              FFAppState().tahinicheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .tahinacheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().tahinicheck = true;
                                              FFAppState().Tahinivis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().tahinicheck = false;
                                              FFAppState().Tahinivis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                FFIcons.kcupcake,
                                                color: Color(0xFFF5A623),
                                                size: 50.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pastries',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'حلويات',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.pastirescheckValue ??=
                                              FFAppState().pastiriescheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() =>
                                                _model.pastirescheckValue =
                                                    newValue!);
                                            if (newValue!) {
                                              FFAppState().Pastriesvis = true;
                                              FFAppState().pastiriescheck =
                                                  true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().Pastriesvis = false;
                                              FFAppState().pastiriescheck =
                                                  false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 65.0, 0.0),
                                                child: Icon(
                                                  FFIcons.kabuauf,
                                                  color: Color(0xFFF5A623),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Abu Auf',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'ابو  عوف ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.abuaufcheckValue ??=
                                              FFAppState().abuaufcheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .abuaufcheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().abuaufcheck = true;
                                              FFAppState().AbuAufvis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().abuaufcheck = false;
                                              FFAppState().AbuAufvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Icon(
                                                  FFIcons.ksupport,
                                                  color: Color(0xFFF5A623),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Customer Service',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'خدمة العملاء',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF3A3F47),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                        child: Checkbox(
                                          value: _model.customecheckValue ??=
                                              FFAppState().customercheck,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .customecheckValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().customercheck = true;
                                              FFAppState().customerVis = true;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().abuaufcheck = false;
                                              FFAppState().AbuAufvis = false;
                                              safeSetState(() {});
                                            }
                                          },
                                          side: (FlutterFlowTheme.of(context)
                                                      .alternate !=
                                                  null)
                                              ? BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                )
                                              : null,
                                          activeColor: Color(0xFFF5A623),
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 50.0, 10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                              SettingPageWidget.routeName);
                                        },
                                        text: '',
                                        icon: FaIcon(
                                          FontAwesomeIcons.chevronLeft,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 50.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF3A3F47),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(),
                                      child: Image.asset(
                                        'assets/images/output-onlinepngtools_1_200x200.png',
                                        width: 230.8,
                                        height: 95.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 250.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 6.0, 0.0),
                                        child: Icon(
                                          Icons.calendar_today_rounded,
                                          color: Color(0xFF616161),
                                          size: 20.0,
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          "EEEE",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF616161),
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          "d/M/y",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF616161),
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Icon(
                                          Icons.access_time_rounded,
                                          color: Color(0xFF616161),
                                          size: 20.0,
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          "jms",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF616161),
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 32.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 50.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          TheSelectionScreenWidget.routeName);
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.home,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF3A3F47),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
