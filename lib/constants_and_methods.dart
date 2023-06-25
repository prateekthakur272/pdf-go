import 'package:flutter/material.dart';

showSnackbar(
    {required context,
    required String content,
    Color foregroundColor = Colors.black,
    Color backGroundColor = Colors.grey}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        content,
        style: TextStyle(color: foregroundColor),
      ),
      backgroundColor: backGroundColor));
}
