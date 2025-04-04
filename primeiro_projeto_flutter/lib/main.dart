import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp02());
}

//stack = pilha, elementps um sobre o outro
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(color: Colors.black, width: 300, height: 300,),
          Container(color: Colors.pink, width: 150, height: 150,),
          Container(color: Colors.blue,width: 75,height: 75,),
          Container(color: Colors.blue,width: 37,height: 37,),
        ],
      ),
    );
  }
}

//collum = coluna, elementos alinhados verticalmente
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
        children: [
          Container(color: Colors.black, width: 300, height: 300,),
          Container(color: Colors.pink, width: 150, height: 150,),
        ],
      ),
    );
  }
}

//Row = Linha, elementos alinhados horizontalmente
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
          Container(color: Colors.black, width: 300, height: 300,),
          Container(color: Colors.pink, width: 150, height: 150,),
        ],
      ),
    );
  }
}