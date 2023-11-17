import 'package:flutter/material.dart';

class MenuEventosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Eventos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Menu de Eventos',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegue para o menu de tipos de eventos
                Navigator.pushNamed(context, '/tipos_eventos');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('1 - Escolher Tipo de Evento'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para visualizar eventos
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('2 - Visualizar Eventos'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para alterar evento
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('3 - Alterar Evento'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para excluir evento
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('4 - Excluir Evento'),
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
              child: Text('0 - Menu Principal'),
            ),
          ],
        ),
      ),
    );
  }
}
