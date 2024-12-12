import 'package:dartz/dartz.dart';
import 'package:hoshmand_code_challenge/core/base/base_use_case.dart';
import 'package:hoshmand_code_challenge/core/utils/failure.dart';
import 'package:hoshmand_code_challenge/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllUnitsUseCase extends BaseUseCase<Unit, void> {
  final Repository repository;

  GetAllUnitsUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(void param) {
    return repository.getAllUnits();
  }
}
