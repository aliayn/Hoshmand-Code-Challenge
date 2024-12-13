import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';
/// Usage: each item should have an icon
Future<void> eachItemShouldHaveAnIcon(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final unit = binding.getVariable('currentUnit') as UnitModel;
  
  for (final content in unit.hamdarsQUnitLearningContentDtos ?? []) {
    expect(
      find.byType(SvgPicture),
      findsWidgets,
      reason: 'Icon not found for content item "${content.title}"',
    );
  }
}
