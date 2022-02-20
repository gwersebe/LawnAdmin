import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String generateUID() {
  // generate a unique id
  int timestamp = new DateTime.now().millisecondsSinceEpoch;
  return timestamp.toString();
}

String convertDate(DateTime input) {
  // convert date to string
  return DateFormat('yyyyMMdd').format(input);
}

String convertSecondDate(DateTime date) {
  var newDate = new DateTime(date.year, date.month, date.day + 1);
  return DateFormat('yyyyMMdd').format(newDate);
}
