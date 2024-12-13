import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: the unit content should update
Future<void> theUnitContentShouldUpdate(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedIndex = binding.getVariable('selectedIndex') as int;
  final selectedUnit = units[selectedIndex];
  
  // Verify the content area shows the selected unit's content
  for (final content in selectedUnit.hamdarsQUnitLearningContentDtos ?? []) {
    expect(find.text(content.title ?? ''), findsOneWidget);
    expect(find.text(content.description ?? ''), findsOneWidget);
  }
}
