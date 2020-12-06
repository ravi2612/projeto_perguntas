import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPress;

  Resposta(this.texto,this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.lightBlueAccent,
        child: Text(texto),
        onPressed: onPress,
      ),
    );
  }
}
