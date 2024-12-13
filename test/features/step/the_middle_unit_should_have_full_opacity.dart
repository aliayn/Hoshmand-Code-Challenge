import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';

/// Usage: the middle unit should have full opacity
Future<void> theMiddleUnitShouldHaveFullOpacity(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final middleIndex = units.length ~/ 2;
  
  final middleUnitWidget = tester.widget<Opacity>(
    find.ancestor(
      of: find.text(units[middleIndex].name ?? ''),
      matching: find.byType(Opacity),
    ),
  );
  
  expect(middleUnitWidget.opacity, 1.0);
}
