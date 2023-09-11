

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagens/fundo01.png'), // Substitua pelo caminho correto da sua imagem
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Bem-vindo ao Medic Free Meditation',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Cor do texto do título
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(
                            color: Colors.white, // Cor do texto do rótulo (label)
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(
                            color: Colors.white, // Cor do texto do rótulo (label)
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Adicione aqui a lógica para redefinir a senha
                          },
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                              color: Colors.white, // Cor do texto do botão "Esqueceu a senha?"
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Adicione aqui a lógica de autenticação
                          // Por exemplo, verificar as credenciais e fazer login
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF729899), // Cor de fundo do botão #729899
                        ),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white, // Cor do texto do botão
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Não tem uma conta? Cadastre-se",
                          style: TextStyle(
                            color: Colors.white, // Cor do texto do link "Não tem uma conta? Cadastre-se"
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 



  