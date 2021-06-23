import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _text = "Rafael Augusto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text = "Curso Flutter";
                });
              },
              // color: Colors.red,
              child: Text("Clique aqui"),
            ),
            Text("Nome: $_text")
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("Conteudo principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("Text1"),
              Text("Text2"),
            ],
          ),
        ),
      ),
    );
  }
}
