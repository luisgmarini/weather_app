import 'package:app/src/layers/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import '../entities/weather.dart';
import '../repositories/search_by_city_name_repository.dart';

abstract class SearchByCityNameUsecase {
  Future<Either<SearchByCityNameFailure, List<Weather>>> call(String searchText);
}

class SearchByCityNameUsecaseImpl implements SearchByCityNameUsecase {

  final SearchByCityNameRepository repository;

  SearchByCityNameUsecaseImpl({required this.repository});

  @override
  Future<Either<SearchByCityNameFailure, List<Weather>>> call(String searchText)
  async {
    return repository.search(searchText);
  }

}