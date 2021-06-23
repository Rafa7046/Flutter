import 'package:flutter/material.dart';
import 'dart:math';

var choices = ["images/papel.png", "images/pedra.png", "images/tesoura.png"];
var image = "images/padrao.png";
var text = "Escolha uma opção abaixo";

randomNum() {
  Random random = new Random();
  int randomNumber = random.nextInt(3);
  return randomNumber;
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Jokenpo",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //text
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "Escolha do App",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //image
              Image.asset(image),
              //text
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //image row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = choices[randomNum()];
                        if (image == "images/papel.png") {
                          // ignore: unnecessary_statements
                          text = "Empate";
                        } else if (image == "images/pedra.png") {
                          // ignore: unnecessary_statements
                          text = "Você venceu";
                        } else {
                          // ignore: unnecessary_statements
                          text = "Você perdeu";
                        }
                      });
                    },
                    child: Image.asset(
                      "images/papel.png",
                      height: 95,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = choices[randomNum()];
                        if (image == "images/papel.png") {
                          // ignore: unnecessary_statements
                          text = "Você perdeu";
                        } else if (image == "images/pedra.png") {
                          // ignore: unnecessary_statements
                          text = "Empate";
                        } else {
                          // ignore: unnecessary_statements
                          text = "Você venceu";
                        }
                      });
                    },
                    child: Image.asset("images/pedra.png", height: 95),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = choices[randomNum()];
                        if (image == "images/papel.png") {
                          // ignore: unnecessary_statements
                          text = "Você venceu";
                        } else if (image == "images/pedra.png") {
                          // ignore: unnecessary_statements
                          text = "Você perdeu";
                        } else {
                          // ignore: unnecessary_statements
                          text = "Empate";
                        }
                      });
                    },
                    child: Image.asset("images/tesoura.png", height: 95),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
