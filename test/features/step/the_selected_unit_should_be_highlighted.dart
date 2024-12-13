import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: the selected unit should be highlighted
Future<void> theSelectedUnitShouldBeHighlighted(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedIndex = binding.getVariable('selectedIndex') as int;
  
  // Find the selected unit's widget
  final selectedUnitWidget = tester.widget<Opacity>(
    find.ancestor(
      of: find.text(units[selectedIndex].name ?? ''),
      matching: find.byType(Opacity),
    ),
  );
  
  // Verify it has full opacity
  expect(selectedUnitWidget.opacity, 1.0);
  
  // Verify other units have reduced opacity
  for (var i = 0; i < units.length; i++) {
    if (i != selectedIndex) {
      final widget = tester.widget<Opacity>(
        find.ancestor(
          of: find.text(units[i].name ?? ''),
          matching: find.byType(Opacity),
        ),
      );
      expect(widget.opacity, lessThan(1.0));
    }
  }
}
