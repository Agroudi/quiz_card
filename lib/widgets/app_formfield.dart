import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?) validator;

  const DefaultFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.label,
    this.isPassword = false,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7A1FA0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: primaryPurple,
            ),
          ),
          const SizedBox(height: 4),
        ],
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,

            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: primaryPurple, width: 1.5),
            ),

            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: primaryPurple, width: 1.8),
            ),

            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.red, width: 1.5),
            ),

            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.red, width: 1.8),
            ),

            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}