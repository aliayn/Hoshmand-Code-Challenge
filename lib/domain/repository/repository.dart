import 'package:dartz/dartz.dart';
import 'package:hoshmand_code_challenge/core/utils/failure.dart';

abstract class Repository {
  Future<Either<Failure, Unit>> getAllUnits();
}
