
import 'package:flutter/material.dart';
import 'appbar.dart';

class Ferramentas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF283637), // Cor de fundo
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Centraliza as colunas e divide o espaço
            children: [
              // Primeira coluna com 3 Container
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10.0), // Espaçamento vertical uniforme
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Adicione o conteúdo do primeiro Container aqui
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10.0), // Espaçamento vertical uniforme
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Adicione o conteúdo do segundo Container aqui
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Adicione o conteúdo do terceiro Container aqui
                  ),
                ],
              ),
              // Segunda coluna com 2 Container
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10.0), // Espaçamento vertical uniforme
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Adicione o conteúdo do quarto Container aqui
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10.0), // Espaçamento vertical uniforme
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Adicione o conteúdo do quinto Container aqui
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

   






