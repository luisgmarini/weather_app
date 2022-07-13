import 'package:app/src/layers/domain/repositories/weather_repository.dart';
import 'package:app/src/layers/domain/usecases/current_weather_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class WeatherRepositoryMock extends Mock implements WeatherRepository {}

main() {
  final repository = WeatherRepositoryMock();
  final usecase = CurrentWeatherFetchUsecaseImpl(repository: repository);


  test("Should return the Weather", () async {
    final result = await usecase.fetchCurrentWeather();
  });

}