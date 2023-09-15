import 'package:flutter/material.dart';
import 'appbar.dart';
import 'play.dart';

class Pg_Principal extends StatelessWidget {
  final List<String> sugestoes = [
    'Sugestão 1',
    'Sugestão 2',
    'Sugestão 3',
    'Sugestão 4',
    'Sugestão 5',
    'Sugestão 6',
    'Sugestão 7',
    'Sugestão 8',
    'Sugestão 9',
    'Sugestão 10',
    'Sugestão 11',
    'Sugestão 12',
    // Adicione mais sugestões conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF283637),
      appBar: buildAppBar(context),
      body: Column(
        children: <Widget>[
          buildTopContainer(context),
          buildSuggestionsList(),
        ],
      ),
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  Widget buildTopContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagens/fp01.avif'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80.0),
            Text(
              'Relaxar Sons',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ás vezes a coisa mais produtiva ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            Text(
              'que você pode fazer é relaxar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.play_circle_filled,
                    size: 32.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Play()),
                    );
                  },
                ),
                Text(
                  'Play Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSuggestionsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: sugestoes.length,
        itemBuilder: (context, index) {
          return buildSuggestionCard();
        },
      ),
    );
  }

  Widget buildSuggestionCard() {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/imagens/logo.png'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Título da Sugestão'),
            Text('Tempo: 5:00'),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.favorite),
            Text('Likes: 100'),
          ],
        ),
        onTap: () {
          // Adicione a lógica para ação ao clicar na sugestão
        },
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
