import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //Função para incrementar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cor de fundo
      backgroundColor: Colors.black,

      //Criando uma coluna no body
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background_senai.jpeg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          //Colocado para centralizar o texto
          mainAxisAlignment: MainAxisAlignment.center,

          //Filhos da coluna
          children: [
            //Primeiro texto da coluna
            Text(
              'Pode Entrar!',

              //Definindo o estilo
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(100),
              child: Text(
                '0',
                //definindo um estilo
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),

            //Criando o segundo text

            //Criando uma linha para os botões
            Row(
              //Alinhando os botões no centro
              mainAxisAlignment: MainAxisAlignment.center,
              //Criando os filhos das linhas
              children: [
                //Criando o primeiro botão
                TextButton(
                  //Função quando pressionado o botão
                  onPressed: null,

                  //Definindo estilo do botão
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    //Definindo um tamanho fixo para o botão
                    fixedSize: Size(100, 100),
                    //Deixando as bordas do botão arredondada
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),

                  //Criando o texto e estilo do botão
                  child: Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),

                //Colocando espaçamento entre os botões
                SizedBox(width: 32),

                //Criando o segundo botão
                TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    //Definindo um tamanho fixo para o botão
                    fixedSize: Size(100, 100),

                    //Deixando as bordas do botão arredondada
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
