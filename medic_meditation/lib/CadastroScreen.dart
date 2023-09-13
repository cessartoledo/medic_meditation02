import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remova o AppBar
      body: Stack(
        children: <Widget>[
          // Imagem de fundo
          Image.asset(
            'assets/imagens/fundo01.png', //  imagem de fundo
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Conteúdo do formulário
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Inscreva-se ', // Texto acima do campo "Nome"
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Cor do texto "Inscrever-se"
                  ),
                ),

                Text(
                  'Inscreva-se agora e comece a meditar e explore o Medic', 
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Cor do texto "Inscrever-se"
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                            color: Colors.white, // Cor do texto do rótulo (label)
                          ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                            color: Colors.white, // Cor do texto do rótulo (label)
                          ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                            color: Colors.white, // Cor do texto do rótulo (label)
                          ),
                    
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Adicione aqui a lógica de cadastro
                    // Por exemplo, enviar dados para um servidor ou salvar localmente
                    // Após o cadastro, você pode redirecionar o usuário para a tela de login
                    Navigator.pop(context); // Fecha a tela de cadastro e volta para a tela de login
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF729899), // Cor de fundo do botão #729899
                  ),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.white, // Cor do texto do botão
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
