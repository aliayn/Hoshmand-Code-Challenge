import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: the middle unit should be selected
Future<void> theMiddleUnitShouldBeSelected(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final middleIndex = units.length ~/ 2;
  
  // Find the middle unit's name in the widget tree
  expect(find.text(units[middleIndex].name ?? ''), findsOneWidget);
  
  // Verify it has full opacity
  final widget = tester.widget<Opacity>(
    find.ancestor(
      of: find.text(units[middleIndex].name ?? ''),
      matching: find.byType(Opacity),
    ),
  );
  expect(widget.opacity, 1.0);
}
