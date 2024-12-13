import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

import '../../helpers/test_binding.dart';

/// Usage: I should see all unit names
Future<void> iShouldSeeAllUnitNames(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  
  for (final unit in units) {
    expect(find.text(unit.name ?? ''), findsOneWidget);
  }
}
