class WeatherModel {
  final String name, country;
  final double temperature;

  const WeatherModel({required this.name, required this.country, required this.temperature});

  String getName() => name;

  String getCountry() => country;

  double getTemperature() => temperature;

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        name: json['name'], country: json['sys']['country'], temperature: json['main']['temp']);
  }
}
