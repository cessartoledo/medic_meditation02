import 'package:flutter/material.dart';
import 'appbar.dart';

import 'buildBottomAppBar.dart';

class Ferramentas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Color(0xFF283637),
      appBar: buildAppBar(context),
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tools',
                style: TextStyle(fontSize: 24.0, color: Colors.white), // Estilo de texto personalizado
              ), 
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  _buildRoundedTile(
                    context,
                    'Mood Journal',
                    Icons.book,
                    'assets/imagens/fp01.avif',
                    active: true,
                  ),
                  _buildRoundedTile(
                    context,
                    'Mood Booster',
                    Icons.favorite,
                    'assets/imagens/fundo01.png',
                    active: true,
                  ),
                  _buildRoundedTile(
                    context,
                    'Positive Notes',
                    Icons.note,
                    'assets/imagens/fp01.avif',
                    active: true,
                  ),
                  _buildRoundedTile(
                    context,
                    'Trigger Plan',
                    Icons.warning,
                    'assets/imagens/fp01.avif',
                    active: true,
                  ),
                  _buildRoundedTile(
                    context,
                    'Goal Trainer',
                    Icons.flag,
                    'assets/imagens/fundo01.png',
                    active: true,
                  ),
                  _buildRoundedTile(
                    context,
                    'More Tools',
                    Icons.more_horiz,
                    'assets/imagens/fp01.avif',
                    active: false,
                  ),
                ],
              ),
            ),
          ],
        ),
       bottomNavigationBar: buildBottomAppBar(),
      ),
    );
  }

  Widget _buildRoundedTile(BuildContext context, String label, IconData iconData, String imagePath, {bool active = true}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
        child: Card(
          color: active ? Colors.transparent : Colors.grey,
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
        ),
      ),
    );
  }
}
