import 'package:blocinterview/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCaseItems<Type, Params> {
  Future<Either<Failure, Type>> call();
}

abstract class UseCaseCart<Type, Params> {
  Type call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}