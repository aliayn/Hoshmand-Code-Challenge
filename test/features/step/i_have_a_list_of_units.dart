import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

import '../../helpers/test_binding.dart';

/// Usage: I have a list of units
Future<void> iHaveAListOfUnits(WidgetTester tester) async {
  final units = List.generate(
    3,
    (index) => UnitModel(
      name: 'Unit $index',
      unitIcon: 'https://example.com/icon$index.svg',
      hamdarsUserCurrentUnitLevelPoint: (index * 10).toInt(),
      hamdarsUserMaxUnitLevelPoint: (index * 100).toInt(),
    ),
  );
  final binding = CustomTestBinding.instance;
  binding.setVariable('units', units);
}
