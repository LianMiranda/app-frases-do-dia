import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var frases = [
    "Acredite no poder dos seus sonhos e siga em frente, mesmo que o caminho pareça difícil.",
    "A vida não é sobre esperar a tempestade passar, é sobre aprender a dançar na chuva.",
    "Cada novo dia é uma oportunidade para mudar sua vida.",
    "O sucesso não é o fim, o fracasso não é fatal.",
    "Grandes conquistas começam com pequenos passos.",
    "A persistência é o caminho do êxito.",
    "Seja a mudança que você deseja ver no mundo.",
    "O melhor momento para plantar uma árvore foi há 20 anos. O segundo melhor momento é agora.",
    "Não importa o quão devagar você vá, desde que você não pare.",
    "O que você faz hoje pode melhorar todos os seus amanhãs.",
    "A coragem é a resistência ao medo, o domínio do medo, não a ausência do medo.",
    "Você é mais forte do que pensa, mais capaz do que imagina.",
    "A felicidade não é algo pronto. Ela vem de suas próprias ações.",
    "A única maneira de fazer um excelente trabalho é amar o que você faz."
];


  var fraseGerada = " Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var randomNumber = Random().nextInt(frases.length);
    
  setState(() {
    fraseGerada = frases[randomNumber];
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Frases do Dia",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.fill,
                  ),
                  Text(
                    fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 19,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  MaterialButton(
                    onPressed: _gerarFrase,
                    child: Text("Nova Frase",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    color: Colors.grey,
                  )
                ],
              )),
        ));
  }
}
