import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final String label;
  final TextInputType textInputType;

  const CustomInput(
      {Key? key,
      required this.label,
      required this.hint,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "El campo no puede ser vacio";
          }
        });
  }
}
