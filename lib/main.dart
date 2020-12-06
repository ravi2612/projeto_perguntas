import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': ' Qual é a sua cor favorita?'.toUpperCase(),
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': ' Qual é seu animal favorito?'.toUpperCase(),
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leao'],
      },
      {
        'texto': 'Qual seu esporte favorito ? '.toUpperCase(),
        'respostas': ['Futebol', 'Basquete', 'Volei', 'Nataçao']
      }
    ];

    
    
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];        //funcional


    //for (var textoResp in respostas) {             //imperativa
    // widgets.add(Resposta(textoResp, _responder));
    // }

    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t)=> Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
