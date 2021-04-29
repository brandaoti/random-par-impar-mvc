import 'dart:math';

import 'package:flutter/material.dart';

import 'random/random_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubos Academy - Par or Impar'),
      ),
      body: RandomView(),
    );
  }
}
