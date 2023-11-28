import 'package:flutter/material.dart';

List<String> fornecedores = [];

final tipos = [
  'Decoração',
  'Lembrancinhas',
  'Cabine de Fotos',
  'Fotógrafo',
  'Filmagem',
  'Doces ',
  'Chocolate em cascata',
  'Buffet',
  'Coquetel',
  'Bolo Fake',
  'Bolo Corte'
];

class VisualizarFornecedoresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualizar fornecedores'),
      ),
      body: ListView.builder(
        itemCount: fornecedores.length,
        itemBuilder: (context, indice) {
          return ListTile(
            title: Text(fornecedores[indice]),
          );
        },
      ),
    );
  }
}
