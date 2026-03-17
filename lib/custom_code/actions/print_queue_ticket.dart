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
  String peopleAhead,
  String DepartName,
) async {
  final printer = IminPrinter();

  await printer.initPrinter();

  // 🕒 Get current date & time
  final now = DateTime.now();

  final formattedDate = "${now.day.toString().padLeft(2, '0')}/"
      "${now.month.toString().padLeft(2, '0')}/"
      "${now.year}";

  final formattedTime = "${now.hour.toString().padLeft(2, '0')}:"
      "${now.minute.toString().padLeft(2, '0')}";

  // Header
  await printer.printText(
    DepartName,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 60,
      fontStyle: IminFontStyle.bold,
    ),
  );

  await printer.printText(
    '------------------------------------------------',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 20,
    ),
  );

  // Date & Time
  await printer.printText(
    "$formattedDate  $formattedTime",
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
    ),
  );

  await printer.printText('', style: IminTextStyle(fontSize: 10));

  // Ticket Number
  await printer.printText(
    'YOUR NUMBER',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 50,
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
  await printer.printAndFeedPaper(100);
  await printer.partialCut();
}
