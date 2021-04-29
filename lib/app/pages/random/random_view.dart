import 'package:flutter/material.dart';
import 'package:random_par_impar_mvc/app/components/bottom_navigator_component.dart';
import 'package:random_par_impar_mvc/app/components/buttons/button_component.dart';
import 'package:random_par_impar_mvc/app/components/round_component.dart';
import 'package:random_par_impar_mvc/app/components/texts/text_component.dart';
import 'package:random_par_impar_mvc/app/pages/random/random_controller.dart';

class RandomView extends StatefulWidget {
  RandomView({Key key}) : super(key: key);

  @override
  _RandomViewState createState() => _RandomViewState();
}

class _RandomViewState extends State<RandomView> {
  final controller = RandomController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controller.randomActive();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Vai expandir no limite do proximo Widget
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundComponent(data: controller.value),

              // ? Verifica se o valor é PAR ou IMPAR
              // ? Instancia o Text de acordo com o resultado
              controller.isPar
                  ? TextComponent(data: controller.dataPar)
                  : TextComponent(data: controller.dataImpar),
            ],
          ),
        ),

        //
        BottomNavigatorComponent(
          children: [
            ButtonComponent(
              data: 'Restart',
              onPressed: () {
                setState(() {
                  controller.randomActive();
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
