import 'package:weather_app/Models/weather_model.dart';

class GetWeatherState {}

class NoWeatherState extends GetWeatherState {}

class WeatherLoadingState extends GetWeatherState {}

class WeatherLoadedState extends GetWeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState({required this.weatherModel});
}

class WeatherFaliureState extends GetWeatherState {}
