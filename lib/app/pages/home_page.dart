import 'dart:math';

import 'package:flutter/material.dart';

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
                _buildRoundComponent(newRandom.toString()),

                // ? Verifica se o valor é PAR ou IMPAR
                // ? Instancia o Text de acordo com o resultado
                ehPar ? Text(par) : Text(impar),
              ],
            ),
          ),

          //
          Container(
            height: 100,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButtonComponent('Restart', restart),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonComponent(String label, Function onFunction) {
    return ElevatedButton(
      child: Text(label),
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        onPrimary: Colors.white,
      ),
      onPressed: onFunction,
    );
  }

  Widget _buildRoundComponent(String value) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Text('$value'),
    );
  }
}
