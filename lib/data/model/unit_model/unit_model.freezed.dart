// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitModel _$UnitModelFromJson(Map<String, dynamic> json) {
  return _UnitModel.fromJson(json);
}

/// @nodoc
mixin _$UnitModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_icon')
  String? get unitIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_user_study')
  int? get sumUserStudy => throw _privateConstructorUsedError;
  int? get hamdarsUserUnitLevelIndex => throw _privateConstructorUsedError;
  int? get hamdarsUserCurrentUnitLevelPoint =>
      throw _privateConstructorUsedError;
  int? get hamdarsUserMaxUnitLevelPoint => throw _privateConstructorUsedError;
  int? get hamdarsUserMinUnitLevelPoint => throw _privateConstructorUsedError;
  List<HamdarsQUnitLearningContentDto>? get hamdarsQUnitLearningContentDtos =>
      throw _privateConstructorUsedError;

  /// Serializes this UnitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitModelCopyWith<UnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitModelCopyWith<$Res> {
  factory $UnitModelCopyWith(UnitModel value, $Res Function(UnitModel) then) =
      _$UnitModelCopyWithImpl<$Res, UnitModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'unit_icon') String? unitIcon,
      @JsonKey(name: 'sum_user_study') int? sumUserStudy,
      int? hamdarsUserUnitLevelIndex,
      int? hamdarsUserCurrentUnitLevelPoint,
      int? hamdarsUserMaxUnitLevelPoint,
      int? hamdarsUserMinUnitLevelPoint,
      List<HamdarsQUnitLearningContentDto>? hamdarsQUnitLearningContentDtos});
}

/// @nodoc
class _$UnitModelCopyWithImpl<$Res, $Val extends UnitModel>
    implements $UnitModelCopyWith<$Res> {
  _$UnitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unitIcon = freezed,
    Object? sumUserStudy = freezed,
    Object? hamdarsUserUnitLevelIndex = freezed,
    Object? hamdarsUserCurrentUnitLevelPoint = freezed,
    Object? hamdarsUserMaxUnitLevelPoint = freezed,
    Object? hamdarsUserMinUnitLevelPoint = freezed,
    Object? hamdarsQUnitLearningContentDtos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      unitIcon: freezed == unitIcon
          ? _value.unitIcon
          : unitIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      sumUserStudy: freezed == sumUserStudy
          ? _value.sumUserStudy
          : sumUserStudy // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserUnitLevelIndex: freezed == hamdarsUserUnitLevelIndex
          ? _value.hamdarsUserUnitLevelIndex
          : hamdarsUserUnitLevelIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserCurrentUnitLevelPoint: freezed ==
              hamdarsUserCurrentUnitLevelPoint
          ? _value.hamdarsUserCurrentUnitLevelPoint
          : hamdarsUserCurrentUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserMaxUnitLevelPoint: freezed == hamdarsUserMaxUnitLevelPoint
          ? _value.hamdarsUserMaxUnitLevelPoint
          : hamdarsUserMaxUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserMinUnitLevelPoint: freezed == hamdarsUserMinUnitLevelPoint
          ? _value.hamdarsUserMinUnitLevelPoint
          : hamdarsUserMinUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsQUnitLearningContentDtos: freezed ==
              hamdarsQUnitLearningContentDtos
          ? _value.hamdarsQUnitLearningContentDtos
          : hamdarsQUnitLearningContentDtos // ignore: cast_nullable_to_non_nullable
              as List<HamdarsQUnitLearningContentDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitModelImplCopyWith<$Res>
    implements $UnitModelCopyWith<$Res> {
  factory _$$UnitModelImplCopyWith(
          _$UnitModelImpl value, $Res Function(_$UnitModelImpl) then) =
      __$$UnitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'unit_icon') String? unitIcon,
      @JsonKey(name: 'sum_user_study') int? sumUserStudy,
      int? hamdarsUserUnitLevelIndex,
      int? hamdarsUserCurrentUnitLevelPoint,
      int? hamdarsUserMaxUnitLevelPoint,
      int? hamdarsUserMinUnitLevelPoint,
      List<HamdarsQUnitLearningContentDto>? hamdarsQUnitLearningContentDtos});
}

/// @nodoc
class __$$UnitModelImplCopyWithImpl<$Res>
    extends _$UnitModelCopyWithImpl<$Res, _$UnitModelImpl>
    implements _$$UnitModelImplCopyWith<$Res> {
  __$$UnitModelImplCopyWithImpl(
      _$UnitModelImpl _value, $Res Function(_$UnitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unitIcon = freezed,
    Object? sumUserStudy = freezed,
    Object? hamdarsUserUnitLevelIndex = freezed,
    Object? hamdarsUserCurrentUnitLevelPoint = freezed,
    Object? hamdarsUserMaxUnitLevelPoint = freezed,
    Object? hamdarsUserMinUnitLevelPoint = freezed,
    Object? hamdarsQUnitLearningContentDtos = freezed,
  }) {
    return _then(_$UnitModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      unitIcon: freezed == unitIcon
          ? _value.unitIcon
          : unitIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      sumUserStudy: freezed == sumUserStudy
          ? _value.sumUserStudy
          : sumUserStudy // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserUnitLevelIndex: freezed == hamdarsUserUnitLevelIndex
          ? _value.hamdarsUserUnitLevelIndex
          : hamdarsUserUnitLevelIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserCurrentUnitLevelPoint: freezed ==
              hamdarsUserCurrentUnitLevelPoint
          ? _value.hamdarsUserCurrentUnitLevelPoint
          : hamdarsUserCurrentUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserMaxUnitLevelPoint: freezed == hamdarsUserMaxUnitLevelPoint
          ? _value.hamdarsUserMaxUnitLevelPoint
          : hamdarsUserMaxUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsUserMinUnitLevelPoint: freezed == hamdarsUserMinUnitLevelPoint
          ? _value.hamdarsUserMinUnitLevelPoint
          : hamdarsUserMinUnitLevelPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      hamdarsQUnitLearningContentDtos: freezed ==
              hamdarsQUnitLearningContentDtos
          ? _value._hamdarsQUnitLearningContentDtos
          : hamdarsQUnitLearningContentDtos // ignore: cast_nullable_to_non_nullable
              as List<HamdarsQUnitLearningContentDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitModelImpl implements _UnitModel {
  _$UnitModelImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'unit_icon') this.unitIcon,
      @JsonKey(name: 'sum_user_study') this.sumUserStudy,
      this.hamdarsUserUnitLevelIndex,
      this.hamdarsUserCurrentUnitLevelPoint,
      this.hamdarsUserMaxUnitLevelPoint,
      this.hamdarsUserMinUnitLevelPoint,
      final List<HamdarsQUnitLearningContentDto>?
          hamdarsQUnitLearningContentDtos})
      : _hamdarsQUnitLearningContentDtos = hamdarsQUnitLearningContentDtos;

  factory _$UnitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'unit_icon')
  final String? unitIcon;
  @override
  @JsonKey(name: 'sum_user_study')
  final int? sumUserStudy;
  @override
  final int? hamdarsUserUnitLevelIndex;
  @override
  final int? hamdarsUserCurrentUnitLevelPoint;
  @override
  final int? hamdarsUserMaxUnitLevelPoint;
  @override
  final int? hamdarsUserMinUnitLevelPoint;
  final List<HamdarsQUnitLearningContentDto>? _hamdarsQUnitLearningContentDtos;
  @override
  List<HamdarsQUnitLearningContentDto>? get hamdarsQUnitLearningContentDtos {
    final value = _hamdarsQUnitLearningContentDtos;
    if (value == null) return null;
    if (_hamdarsQUnitLearningContentDtos is EqualUnmodifiableListView)
      return _hamdarsQUnitLearningContentDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UnitModel(id: $id, name: $name, unitIcon: $unitIcon, sumUserStudy: $sumUserStudy, hamdarsUserUnitLevelIndex: $hamdarsUserUnitLevelIndex, hamdarsUserCurrentUnitLevelPoint: $hamdarsUserCurrentUnitLevelPoint, hamdarsUserMaxUnitLevelPoint: $hamdarsUserMaxUnitLevelPoint, hamdarsUserMinUnitLevelPoint: $hamdarsUserMinUnitLevelPoint, hamdarsQUnitLearningContentDtos: $hamdarsQUnitLearningContentDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitIcon, unitIcon) ||
                other.unitIcon == unitIcon) &&
            (identical(other.sumUserStudy, sumUserStudy) ||
                other.sumUserStudy == sumUserStudy) &&
            (identical(other.hamdarsUserUnitLevelIndex,
                    hamdarsUserUnitLevelIndex) ||
                other.hamdarsUserUnitLevelIndex == hamdarsUserUnitLevelIndex) &&
            (identical(other.hamdarsUserCurrentUnitLevelPoint,
                    hamdarsUserCurrentUnitLevelPoint) ||
                other.hamdarsUserCurrentUnitLevelPoint ==
                    hamdarsUserCurrentUnitLevelPoint) &&
            (identical(other.hamdarsUserMaxUnitLevelPoint,
                    hamdarsUserMaxUnitLevelPoint) ||
                other.hamdarsUserMaxUnitLevelPoint ==
                    hamdarsUserMaxUnitLevelPoint) &&
            (identical(other.hamdarsUserMinUnitLevelPoint,
                    hamdarsUserMinUnitLevelPoint) ||
                other.hamdarsUserMinUnitLevelPoint ==
                    hamdarsUserMinUnitLevelPoint) &&
            const DeepCollectionEquality().equals(
                other._hamdarsQUnitLearningContentDtos,
                _hamdarsQUnitLearningContentDtos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      unitIcon,
      sumUserStudy,
      hamdarsUserUnitLevelIndex,
      hamdarsUserCurrentUnitLevelPoint,
      hamdarsUserMaxUnitLevelPoint,
      hamdarsUserMinUnitLevelPoint,
      const DeepCollectionEquality().hash(_hamdarsQUnitLearningContentDtos));

  /// Create a copy of UnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitModelImplCopyWith<_$UnitModelImpl> get copyWith =>
      __$$UnitModelImplCopyWithImpl<_$UnitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitModelImplToJson(
      this,
    );
  }
}

abstract class _UnitModel implements UnitModel {
  factory _UnitModel(
      {final String? id,
      final String? name,
      @JsonKey(name: 'unit_icon') final String? unitIcon,
      @JsonKey(name: 'sum_user_study') final int? sumUserStudy,
      final int? hamdarsUserUnitLevelIndex,
      final int? hamdarsUserCurrentUnitLevelPoint,
      final int? hamdarsUserMaxUnitLevelPoint,
      final int? hamdarsUserMinUnitLevelPoint,
      final List<HamdarsQUnitLearningContentDto>?
          hamdarsQUnitLearningContentDtos}) = _$UnitModelImpl;

  factory _UnitModel.fromJson(Map<String, dynamic> json) =
      _$UnitModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'unit_icon')
  String? get unitIcon;
  @override
  @JsonKey(name: 'sum_user_study')
  int? get sumUserStudy;
  @override
  int? get hamdarsUserUnitLevelIndex;
  @override
  int? get hamdarsUserCurrentUnitLevelPoint;
  @override
  int? get hamdarsUserMaxUnitLevelPoint;
  @override
  int? get hamdarsUserMinUnitLevelPoint;
  @override
  List<HamdarsQUnitLearningContentDto>? get hamdarsQUnitLearningContentDtos;

  /// Create a copy of UnitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitModelImplCopyWith<_$UnitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
