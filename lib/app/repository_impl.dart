import 'package:dartz/dartz.dart';
import 'package:hoshmand_code_challenge/core/utils/failure.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/data/repository/api_repository.dart';
import 'package:hoshmand_code_challenge/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl extends Repository {
  final ApiRepository apiRepository;

  RepositoryImpl(this.apiRepository);

  @override
  Future<Either<Failure, List<UnitModel>>> getAllUnits() async {
    try {
      return Right(await apiRepository.getAllUnits());
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
