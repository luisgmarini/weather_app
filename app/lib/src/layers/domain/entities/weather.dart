class Weather {
  final String description;
  final String weatherMain;
  final String icon;
  final String weatherId;
  final String temperature;
  final String country;
  final String cityName;
  final String time;
  final List<Weather> forecast;

  Weather({
    required this.description,
    required this.weatherMain,
    required this.icon,
    required this.weatherId,
    required this.temperature,
    required this.country,
    required this.cityName,
    required this.time,
    required this.forecast,
  });
}