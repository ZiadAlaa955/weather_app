import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Services/weather_service.dart';

class GetWeatherCubit extends Cubit {
  GetWeatherCubit() : super(NoWeatherState());
  getCurrentWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService().getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFaliureState());
    }
  }
}
