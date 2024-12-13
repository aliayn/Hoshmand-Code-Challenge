import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';

/// Usage: the selected unit should update
Future<void> theSelectedUnitShouldUpdate(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedIndex = binding.getVariable('selectedIndex') as int;
  
  // Verify the selected unit is highlighted
  final selectedUnitWidget = tester.widget<Opacity>(
    find.ancestor(
      of: find.text(units[selectedIndex].name ?? ''),
      matching: find.byType(Opacity),
    ),
  );
  
  // Selected unit should have full opacity
  expect(selectedUnitWidget.opacity, 1.0);
  
  // Verify content area shows selected unit's content
  for (final content in units[selectedIndex].hamdarsQUnitLearningContentDtos ?? []) {
    expect(find.text(content.title ?? ''), findsOneWidget);
    expect(find.text(content.description ?? ''), findsOneWidget);
  }
}
