import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int? calculatePeopleAhead(
  int? total,
  int? serving,
) {
// The arguments 'total' and 'serving' are already defined in the sidebar
  int result = (total ?? 0) - (serving ?? 0);
  return result < 0 ? 0 : result;
}
