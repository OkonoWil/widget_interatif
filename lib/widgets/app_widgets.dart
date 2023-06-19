import 'package:flutter/material.dart';

Text tilte(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text simpleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
  );
}
