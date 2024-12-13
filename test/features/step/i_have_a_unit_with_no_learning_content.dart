import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

import '../../helpers/test_binding.dart';

/// Usage: I have a unit with no learning content
Future<void> iHaveAUnitWithNoLearningContent(WidgetTester tester) async {
  final unit = UnitModel(
    name: 'Empty Unit',
    unitIcon: 'https://example.com/icon.svg',
    hamdarsUserCurrentUnitLevelPoint: 0.toInt(),
    hamdarsUserMaxUnitLevelPoint: 100.toInt(),
    hamdarsQUnitLearningContentDtos: [],
  );
  
  final binding = CustomTestBinding.instance;
  binding.setVariable('currentUnit', unit);
}
