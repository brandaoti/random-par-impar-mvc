import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String data;

  const TextComponent({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
