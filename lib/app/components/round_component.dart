import 'package:flutter/material.dart';

class RoundComponent extends StatelessWidget {
  final String data;

  final double _height = 100;
  final double _width = 100;

  const RoundComponent({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Text(
        data,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
