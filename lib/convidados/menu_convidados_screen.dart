import 'package:flutter/material.dart';

class MenuConvidadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Convidados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Menu de Convidados',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implemente ação para criar lista de convidados
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('1 - Criar Lista'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implemente ação para visualizar listas de convidados
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('2 - Visualizar Listas'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implemente ação para alterar lista de convidados
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('3 - Alterar Lista'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implemente ação para excluir lista de convidados
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('4 - Excluir Lista'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  ),
                  child: Text('0 - Menu Principal'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
