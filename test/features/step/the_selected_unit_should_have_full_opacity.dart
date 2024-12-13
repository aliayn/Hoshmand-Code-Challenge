import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';

/// Usage: the selected unit should have full opacity
Future<void> theSelectedUnitShouldHaveFullOpacity(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final selectedUnit = binding.getVariable('selectedUnit') as UnitModel;
  
  final selectedUnitWidget = tester.widget<Opacity>(
    find.ancestor(
      of: find.text(selectedUnit.name ?? ''),
      matching: find.byType(Opacity),
    ),
  );
  
  expect(selectedUnitWidget.opacity, 1.0);
}
