import 'package:flutter/material.dart';

class BottomNavigatorComponent extends StatelessWidget {
  final List<Widget> children;

  const BottomNavigatorComponent({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          blurRadius: 5,
          offset: Offset(0, -1),
        ),
      ]),
      child: Row(
        // ? Caso precise add outros widgets, trocar o alinhamento
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
