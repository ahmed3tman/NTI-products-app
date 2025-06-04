
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLines;
  final bool? enabled;
  final TextEditingController? controller;

  const MyTextField({
    super.key,
    this.validator,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    this.maxLines,
    this.enabled,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: enabled ?? true,
      maxLines: maxLines ?? 1,

      obscureText: obscureText ?? false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // suffixIcon: IconButton(
        //   onPressed: () {
        //     controller!.clear();},
        //   icon: Icon(suffixIcon ?? Icons.clear),
        // ),
        label: Text(label ?? ''),
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      validator: validator,
    );
  }
}
