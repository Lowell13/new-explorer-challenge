import 'package:flutter/material.dart';
import 'package:nec/score/score.dart';
import '../qsn.dart';
import 'package:nec/pages/sing_in/sign_in.dart';


Map<String, WidgetBuilder> routes = {
  '/score': (context) {
    return Score();
  },
  '/qsn': (context) {
    return Qsn();
  },
  '/sign_in': (context) {
    return SignIn();
  },
};
