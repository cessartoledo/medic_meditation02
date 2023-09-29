import 'package:flutter/material.dart';
import 'cadastroScreen.dart';
import 'pg_principal.dart';
import 'pg_login.dart';
import 'play.dart';
import 'ferramentas.dart';


class RouteGenerator {
  static const String initialRoute = '/'; // Rota inicial, geralmente a tela de login

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Configuração das rotas aqui
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/cadastro':
        return MaterialPageRoute(builder: (_) => CadastroScreen());
      case '/pg_principal':
        return MaterialPageRoute(builder: (_) =>Pg_Principal());
      case '/play':  
         return MaterialPageRoute(builder: (_) => Play());

      case '/ferramentas':
         return MaterialPageRoute(builder: (_) => Ferramentas());




      default:
        // Rota desconhecida, você pode redirecionar para uma tela de erro
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Rota desconhecida: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
