// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.controller,
    this.validator,
    this.onChange,
    this.obscureText = false,
    required this.icon,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChange,
      cursorColor: ThemeConfig.orange1,
      decoration: InputDecoration(
        hintText: label,
        errorStyle: const TextStyle(color: Colors.redAccent),
        labelStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: ThemeConfig.orange1.withOpacity(0.2),
        prefixIcon: icon,
        prefixIconColor: ThemeConfig.orange1,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
