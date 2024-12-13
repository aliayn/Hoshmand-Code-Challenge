import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/hamdars_q_unit_learning_content_dto.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';

/// Usage: I have a unit with learning content
Future<void> iHaveAUnitWithLearningContent(WidgetTester tester) async {
  final unit = UnitModel(
    id: 'test_id',
    name: 'Test Unit',
    unitIcon: 'https://example.com/icon.svg',
    sumUserStudy: 100,
    hamdarsUserUnitLevelIndex: 1,
    hamdarsUserCurrentUnitLevelPoint: 50,
    hamdarsUserMaxUnitLevelPoint: 100,
    hamdarsUserMinUnitLevelPoint: 0,
    hamdarsQUnitLearningContentDtos: [
      HamdarsQUnitLearningContentDto(
        hamdarsQUnitLearningContentTypeDesc: 'Description 1',
        hamdarsQUnitLearningContentTypeUrl: 'https://example.com/content1',
        hamdarsQUnitLearningContentTypeIcon: 'icon1.svg',
        hamdarsQUnitLearningContentTypeColor: '#FF0000',
      ),
      HamdarsQUnitLearningContentDto(
        hamdarsQUnitLearningContentTypeDesc: 'Description 2',
        hamdarsQUnitLearningContentTypeUrl: 'https://example.com/content2',
        hamdarsQUnitLearningContentTypeIcon: 'icon2.svg',
        hamdarsQUnitLearningContentTypeColor: '#00FF00',
      ),
    ],
  );
  
  final binding = CustomTestBinding.instance;
  binding.setVariable('currentUnit', unit);
}
