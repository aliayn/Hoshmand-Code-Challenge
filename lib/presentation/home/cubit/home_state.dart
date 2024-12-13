part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error(String message) = _Error;
  const factory HomeState.unitList(List<UnitModel> units) = _UnitList;
  const factory HomeState.setUnitContent(UnitModel unit) = _SetUnitContent;
}
