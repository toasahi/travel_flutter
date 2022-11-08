import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

void main() {

  // 画面の向き上部固定
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
