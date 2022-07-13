import 'package:app/src/layers/domain/entities/weather.dart';
import 'package:app/src/layers/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {
 Future<Either<CurrentWeatherFailure, Weather>> fetchCurrentWeather();
 Future<Either<ForecastWeatherFailure, List<Weather>>> fetchForecast();
}