import 'package:freezed_annotation/freezed_annotation.dart';

import 'hamdars_q_unit_learning_content_dto.dart';

part 'unit_model.freezed.dart';
part 'unit_model.g.dart';

@freezed
class UnitModel with _$UnitModel {
  factory UnitModel({
    String? id,
    String? name,
    @JsonKey(name: 'unit_icon') String? unitIcon,
    @JsonKey(name: 'sum_user_study') int? sumUserStudy,
    int? hamdarsUserUnitLevelIndex,
    int? hamdarsUserCurrentUnitLevelPoint,
    int? hamdarsUserMaxUnitLevelPoint,
    int? hamdarsUserMinUnitLevelPoint,
    List<HamdarsQUnitLearningContentDto>? hamdarsQUnitLearningContentDtos,
  }) = _UnitModel;

  factory UnitModel.fromJson(Map<String, dynamic> json) =>
      _$UnitModelFromJson(json);
}
