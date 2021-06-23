import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextSpace extends StatefulWidget {
  const TextSpace({Key? key}) : super(key: key);

  @override
  _TextSpaceState createState() => _TextSpaceState();
}

class _TextSpaceState extends State<TextSpace> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Entrada de dados",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.amber,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite seu email",
                ),
                // enabled: true,
                // maxLength: 5,
                // maxLengthEnforcement: MaxLengthEnforcement.enforced,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),
                obscureText: false,
                onSubmitted: (String email) {
                  print("Seu email é " + email);
                },
                controller: _textEditingController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(_textEditingController);
              },
              child: Text(
                "Salvar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
