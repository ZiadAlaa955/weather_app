import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';

void submitCityname(BuildContext context, String value) {
  GetWeatherCubit getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
  getWeatherCubit.getCurrentWeather(cityName: value);
  Navigator.pop(context);
}

OutlineInputBorder customBorder({required Color color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(
      width: 1.2,
      color: color,
    ),
  );
}

ThemeData themeData(BuildContext context) {
  return ThemeData(
    useMaterial3: false,
    primarySwatch: getThemeColor(
      condition:
          BlocProvider.of<GetWeatherCubit>(context).weatherModel?.condition,
    ),
  );
}

MaterialColor getThemeColor({required String? condition}) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
    case 'clear':
      return Colors.orange; // Sunny conditions

    case 'partly cloudy':
    case 'cloudy':
    case 'overcast':
      return Colors.grey; // Cloudy conditions

    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.brown; // Misty and foggy conditions

    case 'patchy rain possible':
    case 'light drizzle':
    case 'patchy light drizzle':
    case 'patchy light rain':
    case 'light rain':
    case 'light rain shower':
    case 'patchy light rain with thunder':
      return Colors.lightBlue; // Light rain conditions

    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
    case 'moderate or heavy rain with thunder':
    case 'patchy snow possible':
    case 'patchy light snow':
    case 'light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
    case 'patchy light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.blue; // Heavy and moderate rain conditions

    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
    case 'heavy freezing drizzle':
    case 'blowing snow':
    case 'blizzard':
      return Colors.cyan; // Sleet conditions

    case 'thundery outbreaks possible':
    case 'thundery light rain':
      return Colors.purple; // Thunderstorm conditions

    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.teal; // Ice pellet conditions

    default:
      return Colors.blue; // Default color for unknown conditions
  }
}
