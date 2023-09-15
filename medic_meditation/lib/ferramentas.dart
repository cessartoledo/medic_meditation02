import 'package:flutter/material.dart';
import 'appbar.dart';

class Ferramentas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppBar(context), // Incorporar o AppBar aqui
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildTile(context, 'Mood Journal', Icons.book, active: true),
            _buildTile(context, 'Mood Booster', Icons.favorite, active: true),
            _buildTile(context, 'Positive Notes', Icons.note, active: true),
            _buildTile(context, 'Trigger Plan', Icons.warning, active: true),
            _buildTile(context, 'Goal Trainer', Icons.flag, active: true),
            _buildTile(context, 'More Tools', Icons.more_horiz, active: false),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor, // Cor de fundo da barra padrão do tema
          elevation: 0, // Remove a sombra da barra
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
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, String label, IconData iconData, {bool active = true}) {
    return Card(
      color: active ? Theme.of(context).primaryColor : Colors.grey, // Usar a cor padrão do tema
      child: InkWell(
        onTap: () {
          // Adicione a lógica de ação ao tocar no tile
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 48.0),
            SizedBox(height: 8.0),
            Text(label, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
