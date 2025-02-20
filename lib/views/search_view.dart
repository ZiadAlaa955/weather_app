import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color you want here
        ),
        title: const Text(
          'Search City',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: controller,
            onSubmitted: (value) {
              submitCityname(context, value);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              suffixIcon: IconButton(
                onPressed: () {
                  submitCityname(context, controller.text);
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
              ),
              suffixIconColor: Colors.grey,
              hintText: 'Enter city name',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              label: const Text('Search'),
              border: customBorder(color: Colors.grey),
              focusedBorder: customBorder(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  void submitCityname(BuildContext context, String value) {
    GetWeatherCubit getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
    getWeatherCubit.getCurrentWeather(cityName: value);
    Navigator.pop(context);
  }

  OutlineInputBorder customBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
