import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key, required this.color, this.onPressed});

  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.search,
        color: color,
      ),
      iconSize: 25,
    );
  }
}
