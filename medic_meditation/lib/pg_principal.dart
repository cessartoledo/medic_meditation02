import 'package:flutter/material.dart';
import 'pg_login.dart';
import 'cadastroScreen.dart';
export 'pg_principal.dart';



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

      
      backgroundColor: Color(0xFF283637), // Cor de fundo

      body: Column(
        children: <Widget>[
            AppBar(
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
        // Ação quando o segundo círculo é pressionado
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
),

      






    




       
        
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
          
         Expanded(
      child: ListView.builder(
        itemCount: sugestoes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset('assets/imagens/logo.png'), // Substitua pelo caminho da imagem desejada
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Título da Sugestão'), // Título à esquerda
                  Text('Tempo: 5:00'), // Tempo à direita
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.favorite),
                  Text('Likes: 100'), // Substitua pelo número real de likes
                ],
              ),
              onTap: () {
                // Adicione a lógica para ação ao clicar na sugestão
              },
            ),
          );
        },
      ),
    ),

  ],
),
            
 
      
        bottomNavigationBar: BottomAppBar(
        color: Color(0xFF283637), // Cor de fundo da barra
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