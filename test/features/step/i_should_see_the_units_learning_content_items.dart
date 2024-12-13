import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

import '../../helpers/test_binding.dart';

/// Usage: I should see the unit's learning content items
Future<void> iShouldSeeTheUnitsLearningContentItems(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final unit = binding.getVariable('currentUnit') as UnitModel;
  
  for (final content in unit.hamdarsQUnitLearningContentDtos ?? []) {
    expect(find.text(content.title ?? ''), findsOneWidget);
    expect(find.text(content.description ?? ''), findsOneWidget);
  }
}
