import 'package:flutter/material.dart';

class DarkTextField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DarkTextField({required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: const Color.fromARGB(255, 36, 39, 44),
          ),
          color: const Color.fromARGB(75, 57, 62, 70)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
              fontFamily: 'Inter',
              color: Color.fromARGB(255, 36, 39, 44),
              fontWeight: FontWeight.w100),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
