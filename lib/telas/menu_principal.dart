import 'package:flutter/material.dart';

class MenuPrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Menu Principal',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu_eventos');
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(200, 50)), // Largura e altura desejadas
                    ),
                    child: Text('1 - Eventos'),
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu_convidados');
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(200, 50)), // Largura e altura desejadas
                    ),
                    child: Text('2 - Convidados'),
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu_fornecedores');
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(200, 50)), // Largura e altura desejadas
                    ),
                    child: Text('3 - Fornecedores'),
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  ElevatedButton(
                    onPressed: () {
                      // Implemente ação para sair
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(200, 50)), // Largura e altura desejadas
                    ),
                    child: Text('0 - Sair'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
