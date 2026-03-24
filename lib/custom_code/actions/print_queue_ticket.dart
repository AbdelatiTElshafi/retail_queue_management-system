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
  String DepartChar,
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

  // Ticket Number
  await printer.printText(
    'مدينه الرحاب',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 50,
    ),
  );

  // Header
  await printer.printText(
    DepartName,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 60,
      fontStyle: IminFontStyle.bold,
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

  await printer.printText(
    ticketNumber,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 70,
      fontStyle: IminFontStyle.bold,
    ),
  );

  // Info
  await printer.printText(
    'People Ahead | العملاء في النتظار : $peopleAhead',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: 22,
    ),
  );

  // Feed + Cut
  await printer.printAndFeedPaper(100);
  await printer.partialCut();
}
