import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hoshmand_code_challenge/core/di/injection.dart';

import '../utils/http_overrides.dart';

class AppService {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    configureDependencies();
    HttpOverrides.global = MyHttpOverrides();
  }
}
