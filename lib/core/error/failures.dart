import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ItemsLoadingFailure extends Failure {
  ItemsLoadingFailure({required this.error});

  final String error;
}
