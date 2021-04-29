import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String data;
  final Function onPressed;

  const ButtonComponent({
    Key key,
    @required this.data,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(data),
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        onPrimary: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
