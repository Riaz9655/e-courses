import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final  suffixIconColor;
  final fillColor;
  final prefixIconColor;
  final validator;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.onChanged,this.controller, this.suffixIcon, this.suffixIconColor, this.fillColor, this.prefixIconColor, this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.grey),
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null ? Icon(prefixIcon) : null,
          suffixIconColor: suffixIconColor,
          prefixIconColor: prefixIconColor,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
    );
  }
}
