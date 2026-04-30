
import 'package:equatable/equatable.dart';
import 'package:practice_app/src/core/Either/Either.dart';
import 'package:practice_app/src/core/failure/failure.dart';



abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract class StreamUseCase<Type, Params> {
  Stream<Type> call(Params params);
}

class SortNextParams extends Equatable {
  final Map<String, String> sortType;
  final String? next;

  const SortNextParams({required this.next, required this.sortType});

  @override
  List<Object?> get props => [next, sortType];
}