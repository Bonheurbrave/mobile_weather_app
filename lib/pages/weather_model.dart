class WeatherModel {
  final String cityName;
  final String temperature;
  final String mainCondition;

  WeatherModel(
      {required this.cityName,
      required this.temperature,
      required this.mainCondition});

  factory WeatherModel.fromJSON(Map<String, dynamic> json) {
    return WeatherModel(
        cityName: json['name'],
        temperature: json['main']['temp'].toDouble(),
        mainCondition: json['weather'][0]['main']);
  }
}
