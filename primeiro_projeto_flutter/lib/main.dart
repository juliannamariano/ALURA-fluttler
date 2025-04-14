import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//Com esse widget NÃO ocorre mudanças dentro do app, pois ele é estático
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        //widget do material design. Ele pede alguns parâmetros: TOPO, MEIO, FUNDO
        appBar: AppBar(title: Text('Tarefas')),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        body: ListView(
          children: [
            Task(nome: 'Num 1'),
            Task(nome: 'Num 2'),
            Task(nome: 'Num 3'),
          ],
        ),
      ),
    );
  }
}

//Com esse widget ocorre mudanças dentro do app
class Task extends StatefulWidget {
  final String nome;

  const Task({super.key, required this.nome});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override


  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(color: Colors.black26, width: 72, height: 100),
                      Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: TextStyle(fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });

                          print(nivel);
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    ],
                  ),
                ),
                Text('Nivel $nivel'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
