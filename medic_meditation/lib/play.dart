import 'package:flutter/material.dart';
import 'appbar.dart';

class Play extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(context),
      body: Column(
        children: [
          buildTopContainer(),
          buildMiddleContainer(),
          buildBottomContainer(),
        ],
      ),
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  Widget buildTopContainer() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color(0xFF253235),
        child: Center(
          child: Text(
            'Seu Texto Aqui',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMiddleContainer() {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagens/fundoplay.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildBottomContainer() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color(0xFF253235),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Text(
                '00:00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Ação ao pressionar o botão Start Now
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFC4CFCC),
                ),
                child: Text(
                  'Start Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

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
}

