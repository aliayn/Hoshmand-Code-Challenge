import 'package:freezed_annotation/freezed_annotation.dart';

part 'hamdars_q_unit_learning_content_dto.freezed.dart';
part 'hamdars_q_unit_learning_content_dto.g.dart';

@freezed
class HamdarsQUnitLearningContentDto with _$HamdarsQUnitLearningContentDto {
  factory HamdarsQUnitLearningContentDto({
    String? hamdarsQUnitLearningContentTypeDesc,
    @JsonKey(name: 'hamdarsQUnitLearningContentTypeURL')
    String? hamdarsQUnitLearningContentTypeUrl,
    String? hamdarsQUnitLearningContentTypeIcon,
    String? hamdarsQUnitLearningContentTypeColor,
  }) = _HamdarsQUnitLearningContentDto;

  factory HamdarsQUnitLearningContentDto.fromJson(Map<String, dynamic> json) =>
      _$HamdarsQUnitLearningContentDtoFromJson(json);
}
