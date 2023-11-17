import 'package:flutter/material.dart';

class TiposEventosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de Eventos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Escolha o tipo de evento:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checklist_casamento');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('1 - CASAMENTOS', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para ANIVERSÁRIO DE 15 ANOS
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('2 - ANIVERSÁRIO DE 15 ANOS',
                  style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para ANIVERSÁRIO INFANTIL
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('3 - ANIVERSÁRIO INFANTIL',
                  style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child:
                  Text('0 - Menu de Eventos', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
