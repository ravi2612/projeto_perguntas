import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final _perguntas = const [
    {
      'texto': ' Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 1},
        {'texto': 'Vermelho', 'nota': 2},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 4}
      ]
    },
    {
      'texto': ' Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 4},
        {'texto': 'Cobra', 'nota': 6},
        {'texto': 'Elefante', 'nota': 8},
        {'texto': 'Leao', 'nota': 9}
      ]
    },
    {
      'texto': ' Qual é seu esporte favorito?',
      'respostas': [
        {'texto': 'volei', 'nota': 4},
        {'texto': 'basquete', 'nota': 6},
        {'texto': 'tenis', 'nota': 8},
        {'texto': 'nataçao', 'nota': 9}
      ]
    },
   //esporte esta com erro runtime type
    
  ];

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada ++;
        _notaTotal += nota;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_notaTotal,_reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
