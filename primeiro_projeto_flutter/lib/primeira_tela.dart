import 'package:flutter/material.dart';

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
      home: Stack(
        alignment: AlignmentDirectional.center,
        //centraliza todos os widgets no meio da tela
        children: [
          Container(color: Colors.black, width: 300, height: 300),
          Container(color: Colors.pink, width: 150, height: 150),
          Container(color: Colors.blue, width: 75, height: 75),
          Container(color: Colors.blue, width: 37, height: 37),
        ],
      ),
    );
  }
}

/* COLLUM = coluna, elementos alinhados verticalmente */
class MyApp01 extends StatelessWidget {
  const MyApp01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //Distribui o espaço igualmente entre os widgets e as bordas (topo e base da tela).
        children: [
          Container(color: Colors.black, width: 300, height: 300),
          Container(color: Colors.pink, width: 150, height: 150),
        ],
      ),
    );
  }
}

/* ROW = Linha, elementos alinhados horizontalmente */
class MyApp02 extends StatelessWidget {
  const MyApp02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(color: Colors.black, width: 300, height: 300),
          Container(color: Colors.pink, width: 150, height: 150),
        ],
      ),
    );
  }
}

/* todos os conceitos Row + Collum + Stack */
class MyApp03 extends StatelessWidget {
  const MyApp03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.purple, width: 100, height: 100),
                Container(color: Colors.pink, width: 50, height: 50),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.purple, width: 100, height: 100),
                Container(color: Colors.pink, width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.amber, width: 50, height: 50),
                Container(color: Colors.grey, width: 50, height: 50),
                Container(color: Colors.brown, width: 50, height: 50),
              ],
            ),
            Container(
              color: Colors.green,
              height: 30,
              width: 300,
              child: Text(
                'Verde da grama',
                style: TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(onPressed: () {
              print('Você apertou o botão');
            }, child: Text('Aperte o botão!')),
          ],
        ),
      ),
    );
  }
}

/*Conceito base: Eixos no Flutter
Main Axis (eixo principal): é a direção onde os widgets filhos são posicionados.
Cross Axis (eixo cruzado): é perpendicular ao main axis, usado para alinhamento transversal. */