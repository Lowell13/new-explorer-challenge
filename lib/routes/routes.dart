import 'package:flutter/material.dart';
import 'package:nec/connection/connection.dart';
import 'package:nec/pages/DetailPage.dart';
import 'package:nec/proximity/Proximity.dart';
import 'package:nec/pages/ListPage.dart';
import 'package:nec/score/score.dart';
import '../qsn/qsn.dart';
import 'package:nec/sing_in/sign_in.dart';


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
  '/connection': (context) {
    return Connection();
  },
  '/proximity': (context) {
    return Proximity();
  },
  '/detailPage': (context) {
    return DetailPage();
  },
  '/listPage': (context) {
    return ListPage();
  },
  '/national': (context) {
    return National();
  },
  '/international': (context) {
    return International();
  },
  '/mystery': (context) {
    return Mystery();
  },
  '/map' : (context) {
    return MapWithPath();
  }
};
