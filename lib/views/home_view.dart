import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/Utils/app_routes.dart';
import 'package:weather_app/Widgets/app_bar_text.dart';
import 'package:weather_app/Widgets/error_message.dart';
import 'package:weather_app/Widgets/no_weather_body.dart';
import 'package:weather_app/Widgets/search_icon_button.dart';
import 'package:weather_app/Widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AppBarText(
          title: 'Weatehr App',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: SearchIconButton(
              onPressed: () {
                GoRouter.of(context).push(searchView);
              },
              color: Colors.white,
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
          } else if (state is WeatherLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const ErrorMesasge();
          }
        },
      ),
    );
  }
}
