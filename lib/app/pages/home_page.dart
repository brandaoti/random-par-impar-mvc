import 'package:flutter/material.dart';
import 'package:random_par_impar_mvc/app/components/round_component.dart';
import 'package:random_par_impar_mvc/app/components/texts/text_component.dart';

import 'dart:math';

import '../components/buttons/button_component.dart';
import '../components/bottom_navigator_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var random = Random();

  String par = 'Par';

  String impar = 'Impar';

  int newRandom = 0;

  bool ehPar = true;

  @override
  Widget build(BuildContext context) {
    void restart() {
      setState(() {
        newRandom = random.nextInt(1000);

        newRandom % 2 == 0 ? ehPar = true : ehPar = false;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Cubos Academy - Par or Impar'),
      ),
      body: Column(
        children: [
          // Vai expandir no limite do proximo Widget
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundComponent(data: newRandom.toString()),

                // ? Verifica se o valor é PAR ou IMPAR
                // ? Instancia o Text de acordo com o resultado
                ehPar ? TextComponent(data: par) : TextComponent(data: impar),
              ],
            ),
          ),

          //
          BottomNavigatorComponent(
            children: [
              ButtonComponent(
                data: 'Restart',
                onPressed: () => restart(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
