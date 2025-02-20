import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/Utils/app_routes.dart';
import 'package:weather_app/Utils/helper.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: themeData(context),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
