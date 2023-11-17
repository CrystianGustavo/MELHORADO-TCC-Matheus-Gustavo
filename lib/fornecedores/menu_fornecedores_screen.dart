import 'package:flutter/material.dart';

class MenuFornecedoresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Fornecedores'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Menu de Fornecedores',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro_fornecedores');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('1 - Criar fornecedor'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/visualizar_fornecedores');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('2 - Visualizar fornecedores'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para alterar fornecedor de Fornecedores
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('3 - Alterar fornecedor'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implemente ação para excluir fornecedor de Fornecedores
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                // Adicione mais estilos conforme necessário
              ),
              child: Text('4 - Excluir fornecedor'),
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
