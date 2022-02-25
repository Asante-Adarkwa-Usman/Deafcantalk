import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? label;
  final Widget? prefixIcon;
  final String? hint;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    this.label,
    this.prefixIcon,
    this.hint,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      child: TextFormField(
          controller: controller,
          style: const TextStyle(fontSize: 18),
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorColor: const Color.fromRGBO(0, 153, 156, 1),
          decoration: InputDecoration(
              label: label,
              labelStyle:
                  const TextStyle(color: Color.fromRGBO(0, 153, 156, 1)),
              hintText: hint,
              prefixIcon: prefixIcon,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(0, 153, 156, 1), width: 1)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromRGBO(0, 153, 156, 1))))),
    );
  }
}
