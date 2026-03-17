// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:imin_printer/imin_printer.dart';
import 'package:imin_printer/enums.dart';
import 'package:imin_printer/imin_style.dart';

Future<String> testIminPrinter() async {
  final printer = IminPrinter();

  final sdkVersion = await printer.getSdkVersion();
  await printer.initPrinter();

  await printer.printText(
    'Test Print',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 30,
      fontStyle: IminFontStyle.bold,
      wordWrap: true,
    ),
  );

  await printer.printText(
    'SDK Version: ${sdkVersion ?? 'Unknown'}',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
      wordWrap: true,
    ),
  );

  return sdkVersion ?? 'Unknown';
}
