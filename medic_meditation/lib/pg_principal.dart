import 'package:flutter/material.dart';
import 'pg_login.dart';
import 'cadastroScreen.dart';



class Pg_Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF283637),
        leading: IconButton(
          icon: Icon(
            Icons.menu, // Ícone do menu (substitua pelo ícone desejado)
            color: Colors.white, // Cor do ícone
          ),
          onPressed: () {
            _openMenu(context);
          },
        ),
        centerTitle: false, // Alinhe o título à esquerda
                   title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    // Imagem centralizada na AppBar
                      GestureDetector(
                     onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                      },
                     child: Image.asset(
                     'assets/imagens/logo.png', // Substitua pelo caminho da sua imagem
                      width: 24, // Ajuste o tamanho da imagem conforme necessário
                      height: 24,
                     //color: Colors.white, // Cor da imagem (opcional)
                     ),
                    ),
                   ],
                  ),
        
     

          

        actions: <Widget>[
          // Adicione botões adicionais aqui
          

          IconButton(
            icon: Icon(
              Icons.settings, // Ícone do botão de configurações (substitua pelo ícone desejado)
              color: Colors.white, // Cor do ícone
            ),
            onPressed: () {
              // Adicione a lógica para o botão de configurações aqui
            },
          ),
        ],
      ),
     
     

      backgroundColor: Color(0xFF283637), // Cor de fundo
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 200, // Aumente a altura para acomodar o título e o texto
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
                  SizedBox(height: 8.0), // Espaço entre o título e o texto
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
                  Spacer(), // Espaço flexível para empurrar o botão para o final
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.play_circle_filled,
                          size: 32.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Adicione a lógica de reprodução de música aqui
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
          ),
          Text(
            'Outros widgets abaixo do Container',
            style: TextStyle(fontSize: 18),
          ),
          // Adicione mais widgets aqui conforme necessário
        ],
      ),
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
}