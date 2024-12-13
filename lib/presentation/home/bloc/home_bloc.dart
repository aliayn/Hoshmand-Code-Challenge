import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hoshmand_code_challenge/core/base/base_use_case.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/domain/use_case/get_all_units_use_case.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllUnitsUseCase getAllUnitsUseCase;

  HomeBloc(this.getAllUnitsUseCase) : super(_Initial()) {
    on<HomeEvent>((event, emit) {});
  }

  Future<void> getAllUnits(HomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeState.loading());
    final result = await getAllUnitsUseCase.call(NoParams());
    result.fold((l) => emit(HomeState.error(l.error)),
        (r) => emit(HomeState.unitList(r)));
  }
}
