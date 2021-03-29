import 'package:flutter/material.dart';
import 'package:nec/score/score.dart';
import '../qsn.dart';

Map<String, WidgetBuilder> routes = {
  '/score': (context) {
    return Score();
  },
  '/qsn': (context) {
    return Qsn();
  },
};