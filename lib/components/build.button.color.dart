import 'package:flutter/material.dart';

class BuildButtonColor extends StatelessWidget {
  @override
  final color;
  final Function func;
  BuildButtonColor({this.color, this.func});

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(10)),
      ),
      onTap: func,
    );
  }
}
