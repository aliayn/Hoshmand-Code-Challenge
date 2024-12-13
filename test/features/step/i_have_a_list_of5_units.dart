import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

import '../../helpers/test_binding.dart';

/// Usage: I have a list of 5 units
Future<void> iHaveAListOf5Units(WidgetTester tester) async {
  final units = List.generate(
    5,
    (index) => UnitModel(
      name: 'Unit $index',
      unitIcon: 'https://example.com/icon$index.svg',
      hamdarsUserCurrentUnitLevelPoint: (index * 10.0).toInt(),
      hamdarsUserMaxUnitLevelPoint: (index * 100.0).toInt(),
    ),
  );
    
  // Store units in test context for later use
  final binding = CustomTestBinding.instance;
  binding.setVariable('units', units);
}
