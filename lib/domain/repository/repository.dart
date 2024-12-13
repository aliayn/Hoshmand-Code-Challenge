import 'package:dartz/dartz.dart';
import 'package:hoshmand_code_challenge/core/utils/failure.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

abstract class Repository {
  Future<Either<Failure, List<UnitModel>>> getAllUnits();
}
