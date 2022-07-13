import 'package:app/src/layers/domain/entities/weather.dart';
import 'package:app/src/layers/domain/errors/errors.dart';
import 'package:app/src/layers/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

class WeatherRepositoryImpl extends WeatherRepository {

  @override
  Future<Either<CurrentWeatherFailure, Weather>> fetchCurrentWeather() {
    // TODO: implement fetchCurrentWeather
    throw UnimplementedError();
  }

  @override
  Future<Either<ForecastWeatherFailure, List<Weather>>> fetchForecast() {
    // TODO: implement fetchForecast
    throw UnimplementedError();
  }

}