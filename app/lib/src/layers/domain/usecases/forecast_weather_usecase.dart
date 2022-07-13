import 'package:app/src/layers/domain/entities/weather.dart';
import 'package:app/src/layers/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import '../repositories/weather_repository.dart';

abstract class ForecastWeatherUsecase {
  Future<Either<ForecastWeatherFailure, List<Weather>>> fetchForecast();
}

class ForecastWeatherUsecaseImpl extends ForecastWeatherUsecase {

  final WeatherRepository repository;

  ForecastWeatherUsecaseImpl({required this.repository});

  @override
  Future<Either<ForecastWeatherFailure, List<Weather>>> fetchForecast() async {
    return repository.fetchForecast();
  }

}