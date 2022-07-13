import 'package:app/src/layers/domain/entities/weather.dart';
import 'package:app/src/layers/domain/errors/errors.dart';
import 'package:app/src/layers/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

abstract class CurrentWeatherFetchUsecase {
 Future<Either<CurrentWeatherFailure, Weather>> fetchCurrentWeather();
}

class CurrentWeatherFetchUsecaseImpl extends CurrentWeatherFetchUsecase {

 final WeatherRepository repository;

  CurrentWeatherFetchUsecaseImpl({required this.repository});

  @override
  Future<Either<CurrentWeatherFailure, Weather>> fetchCurrentWeather() async {
    return repository.fetchCurrentWeather();
  }

}