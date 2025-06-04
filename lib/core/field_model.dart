import 'package:flutter/material.dart';

class FieldRec {


  final String? Function(String?)? validator;
  final String? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLines;
  final bool? enabled;

  FieldRec({
    this.validator,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    this.maxLines,
    this.enabled,
  });
}