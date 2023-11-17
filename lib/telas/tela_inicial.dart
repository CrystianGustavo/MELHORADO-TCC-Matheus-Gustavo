import 'package:flutter/material.dart';

class TelaInicialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtenha o nome do administrador dos argumentos da rota
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final String nome = args?['nome'] ?? 'Administrador';

    return Scaffold(
      appBar: AppBar(
        title: Text('Boas-vindas ao SGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Seja bem-vindo, $nome, estamos muito felizes de tê-lo aqui conosco.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu_principal');
              },
              child: Text('CONTINUAR'),
            ),
          ],
        ),
      ),
    );
  }
}
