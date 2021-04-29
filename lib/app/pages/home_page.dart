import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                _buildRoundComponent(),

                // ? Verifica se o valor é PAR ou IMPAR
                // ? Instancia o Text de acordo com o resultado
                Text('É Par ?'),
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
                _buildButtonComponent('Restart'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildButtonComponent(String label) {
  return ElevatedButton(
    child: Text(label),
    style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.white,
    ),
    onPressed: () {},
  );
}

Widget _buildRoundComponent() {
  return Container(
    height: 100,
    width: 100,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.orange,
      shape: BoxShape.circle,
    ),
    child: Text('100'),
  );
}
