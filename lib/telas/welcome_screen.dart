import 'package:flutter/material.dart';
import '../eventos/menu_eventos_screen.dart';
import '../convidados/menu_convidados_screen.dart';
import '../fornecedores/menu_fornecedores_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo ao SGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo ao SGE (Sistema de Gerenciamento de Eventos)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              child: Text('CONTINUAR'),
            ),
          ],
        ),
      ),
    );
  }
}
