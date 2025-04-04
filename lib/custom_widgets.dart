import 'package:flutter/material.dart';

Widget calculatorButton({required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(20),
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 24, color: Colors.white),
    ),
  );
}
