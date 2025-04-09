import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*STACK = pilha, elementps um sobre o outro*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*MaterialApp: configura o app com o estilo do Material Design.
theme: define as cores e estilo geral do app.
home: é a tela inicial do app — nesse caso, um Stack.*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold( //widget do material design. Ele pede alguns parâmetros: TOPO, MEIO, FUNDO
        appBar: AppBar(
          title: Text('Flutter meus primeiros passos'),
        ),
      ),
    );
  }
}
