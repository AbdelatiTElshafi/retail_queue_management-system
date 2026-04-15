// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:imin_printer/imin_printer.dart';
import 'package:imin_printer/enums.dart';
import 'package:imin_printer/imin_style.dart';

Future<void> testprintQueueTicket(
  String branchname,
  String note,
  int branchsize,
  int deptsize,
  int datesize,
  int ticketsize,
  int peoplesize,
  int notesize,
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
    branchname,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: branchsize,
    ),
  );

  // Header
  await printer.printText(
    "DepartName",
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: deptsize,
      fontStyle: IminFontStyle.bold,
    ),
  );

  // Date & Time
  await printer.printText(
    "$formattedDate  $formattedTime",
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: datesize,
    ),
  );

  await printer.printText(
    "10",
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: ticketsize,
      fontStyle: IminFontStyle.bold,
    ),
  );

  // Info
  await printer.printText(
    'People Ahead | العملاء في النتظار : 20',
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: peoplesize,
    ),
  );

// Info
  await printer.printText(
    note,
    style: IminTextStyle(
      align: IminPrintAlign.center,
      fontSize: notesize,
    ),
  );
  // Feed + Cut
  await printer.printAndFeedPaper(100);
  await printer.partialCut();
}
