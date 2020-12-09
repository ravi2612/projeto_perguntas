import 'package:flutter/material.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children:<Widget> [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 30),
          ),
        ),
        FlatButton(
           child: Text('Reiniciar',
           style: TextStyle(fontSize: 18),
           ),
           textColor: Colors.blue,
           onPressed: quandoReiniciarQuestionario ,
        )
      ],
    );
  }
}
