import 'package:freezed_annotation/freezed_annotation.dart';

import 'hamdars_q_unit_learning_content_dto.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
class Unit with _$Unit {
  factory Unit({
    String? id,
    String? name,
    @JsonKey(name: 'unit_icon') String? unitIcon,
    @JsonKey(name: 'sum_user_study') int? sumUserStudy,
    int? hamdarsUserUnitLevelIndex,
    int? hamdarsUserCurrentUnitLevelPoint,
    int? hamdarsUserMaxUnitLevelPoint,
    int? hamdarsUserMinUnitLevelPoint,
    List<HamdarsQUnitLearningContentDto>? hamdarsQUnitLearningContentDtos,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}
