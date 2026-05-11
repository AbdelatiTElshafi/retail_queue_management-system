import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'erorr_model.dart';
export 'erorr_model.dart';

class ErorrWidget extends StatefulWidget {
  const ErorrWidget({super.key});

  @override
  State<ErorrWidget> createState() => _ErorrWidgetState();
}

class _ErorrWidgetState extends State<ErorrWidget> {
  late ErorrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErorrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xB0FFFDFD),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/jsons/erorr_fath.json',
            width: 504.3,
            height: 376.8,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: Text(
              'Please alert a member of our staff, and they will be happy to help you ',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: Color(0xFF333333),
                    fontSize: 25.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
