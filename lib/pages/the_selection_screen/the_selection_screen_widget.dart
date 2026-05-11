import '/components/erorr/erorr_widget.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'the_selection_screen_model.dart';
export 'the_selection_screen_model.dart';

class TheSelectionScreenWidget extends StatefulWidget {
  const TheSelectionScreenWidget({super.key});

  static String routeName = 'TheSelectionScreen';
  static String routePath = '/theSelectionScreen';

  @override
  State<TheSelectionScreenWidget> createState() =>
      _TheSelectionScreenWidgetState();
}

class _TheSelectionScreenWidgetState extends State<TheSelectionScreenWidget> {
  late TheSelectionScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TheSelectionScreenModel());

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
          child: Stack(
            children: [
              Column(
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
                        'Select a department | إختر قسم',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
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
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.5,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          if (FFAppState().FreshMeatVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Fresh_Meat',
                                  departDisplayName:
                                      'Fresh Meat | اللحوم الطازجة',
                                  departChar: 'FM',
                                );
                              },
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
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Icon(
                                                FFIcons.kfreshMeat,
                                                color: Color(0xFF3A3F47),
                                                size: 85.0,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Fresh Meat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().PoultryVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Poultry',
                                  departDisplayName: 'Poultry | الطيور',
                                  departChar: 'P',
                                );
                              },
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
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 25.0),
                                              child: Icon(
                                                FFIcons.kchicken,
                                                color: Color(0xFF3A3F47),
                                                size: 85.0,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Poultry',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().FishVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Fish',
                                  departDisplayName: 'Fish | الاسماك',
                                  departChar: 'F',
                                );
                              },
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
                                    mainAxisSize: MainAxisSize.min,
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
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Icon(
                                                FFIcons.kfish,
                                                color: Color(0xFF3A3F47),
                                                size: 75.0,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Fish',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().SpicesVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Spices',
                                  departDisplayName: 'Spices | العطاره',
                                  departChar: 'S',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
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
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  FFIcons.kspices,
                                                  color: Color(0xFF3A3F47),
                                                  size: 85.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        50.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Spices',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().FrozenMeatVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Frozen_Meat',
                                  departDisplayName:
                                      'Frozen Meat | اللحوم المجمدة',
                                  departChar: 'FOM',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
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
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Icon(
                                                FFIcons.kfrozen,
                                                color: Color(0xFF3A3F47),
                                                size: 85.0,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Frozen Meat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                        fontSize: 30.0,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF3A3F47),
                                                        fontSize: 30.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                            ),
                          if (FFAppState().BakeryVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Bakery',
                                  departDisplayName: 'Bakery | المخبوزات',
                                  departChar: 'B',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kbakery,
                                                    color: Color(0xFF3A3F47),
                                                    size: 85.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Bakery',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'مخبوزات',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().GroceryVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Grocery',
                                  departDisplayName: 'Grocery | بقالة',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kgrocery,
                                                    color: Color(0xFF3A3F47),
                                                    size: 85.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Grocery',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'بقالة',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().eddysvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Eddy_Bakery',
                                  departDisplayName:
                                      'Eddy\'s Bakery | مخبوزات ايدي ',
                                  departChar: 'B',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons
                                                        .k3407550468966315847496371088742731949076319NRemovebgPreview,
                                                    color: Color(0xFF3A3F47),
                                                    size: 110.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'EDDY\'S Bakery',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'مخبوزات ايدي',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().freshvegvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Fresh_Vegetables',
                                  departDisplayName:
                                      'Fresh Vegetables | خضروات طازجة',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kvegetable,
                                                    color: Color(0xFF3A3F47),
                                                    size: 85.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Fresh Vegetables',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'خضراوات طازجة',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().freshvegvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Frozen_Vegetables',
                                  departDisplayName:
                                      'Frozen Vegetables | خضروات مجمدة',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kfrozenGoods,
                                                    color: Color(0xFF3A3F47),
                                                    size: 70.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Frozen Vegetables',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'خضراوات مجمدة',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().Freshjuicevis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Fresh_Juice',
                                  departDisplayName:
                                      'Fresh Juice | عصائر طازجة',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kjuice,
                                                    color: Color(0xFF3A3F47),
                                                    size: 85.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Fresh Juice',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'عصائر طازجة',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().Restvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Restaurant',
                                  departDisplayName: 'Restaurant | المطعم',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.krestaurant,
                                                    color: Color(0xFF3A3F47),
                                                    size: 85.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Restaurant',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'المطعم',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().Tahinivis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Tahini',
                                  departDisplayName: 'Tahini | الطحينة',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.ktahini,
                                                    color: Color(0xFF3A3F47),
                                                    size: 110.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Tahini',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'الطحينة',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().Pastriesvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Pastries',
                                  departDisplayName: 'Pastries | حلويات',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.kcupcake,
                                                    color: Color(0xFF3A3F47),
                                                    size: 110.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Pastries',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'حلويات',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().AbuAufvis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'Abuauf',
                                  departDisplayName: 'Abu Auf | ابو عوف',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 0.0, 100.0,
                                                          20.0),
                                                  child: Icon(
                                                    FFIcons
                                                        .kimageRemovebgPreview1,
                                                    color: Color(0xFF3A3F47),
                                                    size: 40.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'AbuAuf',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'ابو عوف',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().customerVis)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _model.wholePrint(
                                  context,
                                  depart: 'customer_service',
                                  departDisplayName:
                                      'Customer Service  | خدمة العملاء ',
                                  departChar: 'G',
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 12.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5A623),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Icon(
                                                    FFIcons.ksupport,
                                                    color: Color(0xFF3A3F47),
                                                    size: 80.0,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Customer Service',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displayMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Text(
                                                      'خدمة العملاء',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF3A3F47),
                                                            fontSize: 30.0,
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
                                                  ],
                                                ),
                                              ],
                                            ),
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
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    0.0, 0.0, 70.0, 0.0),
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
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onDoubleTap: () async {
                                    context
                                        .pushNamed(LoginpageWidget.routeName);
                                  },
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.settings_rounded,
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              if (_model.loadingVisability)
                wrapWithModel(
                  model: _model.loadingModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingWidget(),
                ),
              if (_model.error)
                wrapWithModel(
                  model: _model.erorrModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ErorrWidget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
