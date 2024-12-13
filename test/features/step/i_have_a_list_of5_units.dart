import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

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
  tester.binding.setVariable('units', units);
}
