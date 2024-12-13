import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: other units should have reduced opacity
Future<void> otherUnitsShouldHaveReducedOpacity(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedIndex = binding.getVariable('selectedIndex') as int;
  
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
