import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: each item should have a description
Future<void> eachItemShouldHaveADescription(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final unit = binding.getVariable('currentUnit') as UnitModel;
  
  for (final content in unit.hamdarsQUnitLearningContentDtos ?? []) {
    expect(
      find.text(content.description ?? ''),
      findsOneWidget,
      reason: 'Description "${content.description}" not found in the widget tree',
    );
  }
}
