import 'package:flutter/material.dart';
 
 
 Widget buildBottomAppBar() {
    return BottomAppBar(
      color: Color(0xFF283637),
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {
              // Adicione a lógica para ação do botão "Home" aqui
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Adicione a lógica para ação do botão "Favoritos" aqui
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Adicione a lógica para ação do botão "Pesquisa" aqui
            },
          ),
        ],
      ),
    );
  }

