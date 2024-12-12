import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hoshmand_code_challenge/core/di/injection.dart';

class AppService {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    configureDependencies();
  }
}
