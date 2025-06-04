import 'package:flutter/material.dart';

extension Nav on BuildContext {
  Future<dynamic> pushNav(Widget screen) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
