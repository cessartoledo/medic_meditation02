import 'package:flutter/material.dart';
import 'pg_login.dart';
import 'cadastroScreen.dart';
import 'ferramentas.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(   
  backgroundColor: Color(0xFF283637),
  leading: IconButton(
    icon: Icon(
      Icons.menu,
      color: Colors.white,
    ),
    onPressed: () {
      _openMenu(context);
    },
  ),
  centerTitle: false,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Container(
          width: 48, // Tamanho do círculo
          height: 48,
          child: Center(
            child: ClipOval(
              child: Image.asset(
                'assets/imagens/logo.png', // Substitua pelo caminho da sua imagem
                width: 48, // Tamanho da imagem igual ao diâmetro do círculo
                height: 48,
              ),
            ),
          ),
        ),
      ),
    ],
  ),
  
  actions: [
    GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ferramentas()),
          );
      },
      child: Container(
        width: 25, // Tamanho do segundo círculo
        height: 25,
        child: Center(
          child: ClipOval(
            child: Image.asset(
              'assets/imagens/logo.png', // Substitua pelo caminho da segunda imagem
              width: 25, // Tamanho da imagem igual ao diâmetro do círculo
              height: 25,
            ),
          ),
        ),
      ),
     ),
   ],
 );  
}



 void _openMenu(BuildContext context) {
    // Esta função abrirá um menu que permite ao usuário escolher uma página
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Escolha uma página:'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: Text('login'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _navigateToPage1(context);
                  },
                ),
                ListTile(
                  title: Text('cadastrar'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _navigateToPage2(context);
                  },
                ),
                ListTile(
                  title: Text('null'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _navigateToPage3(context);
                  },
                ),
                ListTile(
                  title: Text('null'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _navigateToPage4(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

   void _navigateToPage1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  void _navigateToPage2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastroScreen()),
    );
  }
   void _navigateToPage3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  void _navigateToPage4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  
  
 