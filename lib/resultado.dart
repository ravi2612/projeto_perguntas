

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.nota, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (nota < 8) {
      return 'Parabens!!';
    } else if (nota < 12) {
      return 'Voce e bom';
    } else if (nota < 16) {
      return ' impressionante!!';
    } else {
      return 'Nivel Jedi!!';
    }
  }

  Widget build(BuildContext context) {
    RandomColor randomColor = RandomColor();
    Color color = randomColor.randomColor();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 50, color: color),
          ),
        ),
        Container(height: 200,),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 25),
          ),
            textColor: Colors.redAccent,
            onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
