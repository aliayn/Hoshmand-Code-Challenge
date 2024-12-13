import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hoshmand_code_challenge/core/base/base_use_case.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/domain/use_case/get_all_units_use_case.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetAllUnitsUseCase _getAllUnitsUseCase;
  HomeCubit(this._getAllUnitsUseCase) : super(HomeState.initial()) {
    getAllUnits();
  }

  Future<void> getAllUnits() async {
    emit(HomeState.initial());
    emit(HomeState.loading());
    final result = await _getAllUnitsUseCase.call(NoParams());
    result.fold((l) => emit(HomeState.error(l.error)),
        (r) => emit(HomeState.unitList(r)));
  }

  void setUnitContent(UnitModel unit) {
    emit(HomeState.initial());
    emit(HomeState.setUnitContent(unit));
  }
}
