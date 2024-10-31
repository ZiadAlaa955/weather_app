class WeatherModel {
  final String cityName;
  final String condition;
  final String date;
  final String image;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;

  WeatherModel({
    required this.cityName,
    required this.condition,
    required this.date,
    required this.image,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      date: json["current"]["last_updated"],
      condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
    );
  }
}
