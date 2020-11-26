import 'package:flutter/material.dart';

class BuildButtom extends StatelessWidget {
  final image;
  final Function() func;

  BuildButtom(this.image, this.func);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 50,
        width: 50,
        child: RaisedButton(
          onPressed: func,
          child: image,
          color: Colors.white,
        ),
      ),
    );
  }
}
