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
  var raw = input.toUtc();
  var date = DateFormat('yyyyMMdd').format(raw);
  var time = DateFormat('HHmm').format(raw);
  return date + "T" + time + "Z";
}

String convertSecondDate(DateTime input) {
  // convert date to string
  var raw = input.toUtc();
  var date = DateFormat('yyyyMMdd').format(raw);
  var time = DateFormat('HHmm').format(raw);
  return date + "T" + time + "Z";
}

int sumInv(
  String service1,
  String service2,
  String service3,
  String service4,
) {
  // Add your function code here!
  int sum = 0;
  int s1Int = int.parse(service1);
  int s2Int = int.parse(service2);
  int s3Int = int.parse(service3);
  int s4Int = int.parse(service4);

  if (s1Int != 0 && s2Int != 0 && s3Int != 0 && s4Int != 0) {
    sum = s1Int + s2Int + s3Int + s4Int;
  }
  if (s1Int != 0 && s2Int != 0 && s3Int != 0) {
    sum = s1Int + s2Int + s3Int;
  }
  if (s1Int != 0 && s2Int != 0) {
    sum = s1Int + s2Int;
  }
  if (s1Int != 0) {
    sum = s1Int;
  }

  return (sum);
}

int sumInv2(String input) {
  var arr = input.split(',');
  var num1;
  var num2;
  var num3;
  var num4;

  int sum = 0;
  if (arr[0] == "") {
    num1 = 0;
  } else {
    num1 = int.parse(arr[0]);
  }
  if (arr[1] == "") {
    num2 = 0;
  } else {
    num2 = int.parse(arr[1]);
  }
  if (arr[2] == "") {
    num3 = 0;
  } else {
    num3 = int.parse(arr[2]);
  }
  if (arr[3] == "") {
    num4 = 0;
  } else {
    num4 = int.parse(arr[3]);
  }
  sum = num1 + num2 + num3 + num4;
  return sum;
}
