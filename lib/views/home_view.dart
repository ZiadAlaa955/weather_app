import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/Widgets/error_message.dart';
import 'package:weather_app/Widgets/no_weather_body.dart';
import 'package:weather_app/Widgets/weather_info_body.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'homePage';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Weatehr App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 25,
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return const ErrorMesasge();
          }
        },
      ),
    );
  }
}
