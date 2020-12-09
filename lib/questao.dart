import 'package:flutter/material.dart';


class Questao extends StatelessWidget {
  

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 90),
      child: Text(        
        texto,
        style: TextStyle(fontSize: 40 ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
