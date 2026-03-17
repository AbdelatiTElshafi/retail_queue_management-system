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

Future<void> printQueueTicket(
  String ticketNumber,
  int peopleAhead,
  String estimatedWait,
) async {
  final printer = IminPrinter();

  await printer.initPrinter();

  // Header
  await printer.printText(
    'QUEUE SYSTEM',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 28,
      fontStyle: IminFontStyle.bold,
    ),
  );

  await printer.printText(
    '------------------------',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 20,
    ),
  );

  // Ticket Number
  await printer.printText(
    'YOUR NUMBER',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
    ),
  );

  await printer.printText(
    ticketNumber,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 42,
      fontStyle: IminFontStyle.bold,
    ),
  );

  await printer.printText('', style: IminTextStyle(fontSize: 10));

  // Info
  await printer.printText(
    'People Ahead: $peopleAhead',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
    ),
  );

  await printer.printText(
    'Estimated Wait: $estimatedWait',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
    ),
  );

  await printer.printText(
    '------------------------',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 20,
    ),
  );

  await printer.printText(
    'Please wait for your turn',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 20,
    ),
  );

  // Feed + Cut
  await printer.printAndFeedPaper(80);

// CUT
  await printer.partialCut();

  // لو لقيت method دي شغالة عندك:
  // await printer.partialCut();
}
