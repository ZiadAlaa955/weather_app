import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/Models/weather_model.dart';

class WeatherService {
  final dio = Dio();

  Future<WeatherModel> getCurrentWeather() async {
    try {
      Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=ffc5d9292c414df79bc155252243007&q=Cairo&days=1',
      );

      Map<String, dynamic> jsonData = response.data;
      WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'Oops there is an error , try later';
      throw (errMessage);
    } on Exception catch (e) {
      log(e.toString());
      throw ('Oops there is an error , try later');
    }
  }
}
