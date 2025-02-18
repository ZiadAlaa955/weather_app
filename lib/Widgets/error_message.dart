import 'package:flutter/material.dart';

class ErrorMesasge extends StatelessWidget {
  const ErrorMesasge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Enter a correct city name',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
