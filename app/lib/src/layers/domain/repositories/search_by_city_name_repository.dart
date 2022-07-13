import 'package:dartz/dartz.dart';
import '../entities/weather.dart';
import '../errors/errors.dart';

abstract class SearchByCityNameRepository {
  Future<Either<SearchByCityNameFailure, List<Weather>>> search(String searchText);
}