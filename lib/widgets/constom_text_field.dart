import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final void Function()? onTap;
  final void Function(String)? controller;
  final bool readOnly;
  const CustomTextField({
    super.key,
    required this.hint,
    this.icon,
    this.onTap,
    this.readOnly = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        onTap: onTap,
        style: const TextStyle(color: Colors.white),
        readOnly: readOnly,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            child: Icon(icon, color: Colors.white60),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white60,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
