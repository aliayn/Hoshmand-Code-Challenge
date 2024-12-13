// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitModelImpl _$$UnitModelImplFromJson(Map<String, dynamic> json) =>
    _$UnitModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      unitIcon: json['unit_icon'] as String?,
      sumUserStudy: (json['sum_user_study'] as num?)?.toInt(),
      hamdarsUserUnitLevelIndex:
          (json['hamdarsUserUnitLevelIndex'] as num?)?.toInt(),
      hamdarsUserCurrentUnitLevelPoint:
          (json['hamdarsUserCurrentUnitLevelPoint'] as num?)?.toInt(),
      hamdarsUserMaxUnitLevelPoint:
          (json['hamdarsUserMaxUnitLevelPoint'] as num?)?.toInt(),
      hamdarsUserMinUnitLevelPoint:
          (json['hamdarsUserMinUnitLevelPoint'] as num?)?.toInt(),
      hamdarsQUnitLearningContentDtos:
          (json['hamdarsQUnitLearningContentDtos'] as List<dynamic>?)
              ?.map((e) => HamdarsQUnitLearningContentDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$UnitModelImplToJson(_$UnitModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit_icon': instance.unitIcon,
      'sum_user_study': instance.sumUserStudy,
      'hamdarsUserUnitLevelIndex': instance.hamdarsUserUnitLevelIndex,
      'hamdarsUserCurrentUnitLevelPoint':
          instance.hamdarsUserCurrentUnitLevelPoint,
      'hamdarsUserMaxUnitLevelPoint': instance.hamdarsUserMaxUnitLevelPoint,
      'hamdarsUserMinUnitLevelPoint': instance.hamdarsUserMinUnitLevelPoint,
      'hamdarsQUnitLearningContentDtos':
          instance.hamdarsQUnitLearningContentDtos,
    };
