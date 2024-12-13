import 'package:flutter_test/flutter_test.dart';

class CustomTestBinding extends AutomatedTestWidgetsFlutterBinding {
  static CustomTestBinding? _instance;
  
  static CustomTestBinding get instance {
    _instance ??= CustomTestBinding();
    return _instance!;
  }

  final Map<String, dynamic> _variables = {};

  void setVariable(String key, dynamic value) {
    _variables[key] = value;
  }

  dynamic getVariable(String key) {
    return _variables[key];
  }
} 