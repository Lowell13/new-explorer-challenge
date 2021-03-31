import 'package:flutter/cupertino.dart';
import 'package:nec/connection/connection.dart';
import 'package:nec/maps/map_with_path.dart';
import 'package:nec/qsn/qsn.dart';
import 'package:nec/score/score.dart';
import 'package:nec/sing_in/sign_in.dart';
import 'package:nec/travel/International.dart';
import 'package:nec/travel/Mystery.dart';
import 'package:nec/travel/National.dart';
import 'package:nec/travel/Proximity.dart';
import 'package:nec/widget/DetailPage.dart';
import 'package:nec/widget/ListPage.dart';

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
  '/map': (context) {
    return MapWithPath();
  }
};
