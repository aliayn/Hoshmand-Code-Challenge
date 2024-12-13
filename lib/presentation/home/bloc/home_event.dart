part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.retry() = _Retry;
  const factory HomeEvent.unitChanged(UnitModel unitList) = _UnitChanged;
}
