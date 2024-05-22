import 'package:flutter/material.dart';

class Variable {
  static var boxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: const [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(4, 4),
      blurRadius: 15,
      spreadRadius: 5,
    ),
    BoxShadow(
      color: Colors.grey,
      offset: Offset(-4, -4),
      blurRadius: 15,
      spreadRadius: 5,
    )
  ]);

  static var myboxShadow = const [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(4, 4),
      blurRadius: 15,
      spreadRadius: 5,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-4, -4),
      blurRadius: 15,
      spreadRadius: 5,
    )
  ];
}
