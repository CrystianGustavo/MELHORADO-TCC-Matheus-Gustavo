import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'eventos/checklist_casamento.dart';
import 'telas/welcome_screen.dart';
import 'package:projeto_tcc/convidados/menu_convidados_screen.dart';
import 'package:projeto_tcc/telas/boas_vindas_screen.dart';
import 'package:projeto_tcc/telas/welcome_screen.dart';
import 'fornecedores/visualizar_fornecedores_screen.dart';
import 'package:projeto_tcc/eventos/menu_eventos_screen.dart';
import 'package:projeto_tcc/fornecedores/cadastro_fornecedor_screen.dart';
import 'package:projeto_tcc/fornecedores/menu_fornecedores_screen.dart';
import 'package:projeto_tcc/telas/menu_principal.dart';
import 'package:projeto_tcc/eventos/tipos_eventos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGE - Sistema de Gerenciamento de Eventos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/cadastro': (context) => CadastroAdminScreen(),
        '/boas_vindas': (context) => BoasVindasScreen(),
        '/menu_principal': (context) => MenuPrincipalScreen(),
        '/menu_eventos': (context) => MenuEventosScreen(),
        '/menu_convidados': (context) => MenuConvidadosScreen(),
        '/menu_fornecedores': (context) => MenuFornecedoresScreen(),
        '/cadastro_fornecedores': (context) => CadastroFornecedoresScreen(),
        '/visualizar_fornecedores': (context) => VisualizarFornecedoresScreen(),
        '/tipos_eventos': (context) => TiposEventosScreen(),
        '/checklist_casamento': (context) => ChecklistCasamentoScreen(),
      },
    );
  }
}

final selectedItem = ValueNotifier('');
final selectedItem2 = ValueNotifier('');
final selectedItem3 = ValueNotifier('');
final selectedItem4 = ValueNotifier('');
final selectedItem5 = ValueNotifier('');
final selectedItem6 = ValueNotifier('');
final selectedItem7 = ValueNotifier('');
final selectedItem8 = ValueNotifier('');
final selectedItem9 = ValueNotifier('');
final selectedItem10 = ValueNotifier('');
final selectedItem11 = ValueNotifier('');
final selectedItem12 = ValueNotifier('');
final selectedItem13 = ValueNotifier('');
final selectedItem14 = ValueNotifier('');
final selectedItem15 = ValueNotifier('');
final selectedItem16 = ValueNotifier('');
final selectedItem17 = ValueNotifier('');
final selectedItem18 = ValueNotifier('');
final selectedItem19 = ValueNotifier('');
final selectedItem20 = ValueNotifier('');
final selectedItem21 = ValueNotifier('');
final selectedItem22 = ValueNotifier('');
final selectedItem23 = ValueNotifier('');
final selectedItem24 = ValueNotifier('');
final selectedItem25 = ValueNotifier('');
final selectedItem26 = ValueNotifier('');
final selectedItem27 = ValueNotifier('');
String testeSalvamento = '';

final selecao = ['Decoração', 'Buffet', 'Noiva'];

//List<String> listSalvamento = <String>[];

class CadastroAdminScreen extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Administrador'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Preencha os dados abaixo para se cadastrar como administrador:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String nome = nomeController.text;
                String senha = senhaController.text;
                // Implemente a lógica de cadastro aqui

                // Após o cadastro, redirecione para a tela de boas-vindas com o nome
                Navigator.pushReplacementNamed(
                  context,
                  '/boas_vindas',
                  arguments: {'nome': nome},
                );
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class ChecklistCasamentoScreen extends StatefulWidget {
  @override
  _ChecklistCasamentoScreenState createState() =>
      _ChecklistCasamentoScreenState();
}

class _ChecklistCasamentoScreenState extends State<ChecklistCasamentoScreen> {
  final ChecklistCasamento checklist = ChecklistCasamento(
    nomeFornecedorLembrancinhas: '',
    nomeFornecedorCabineDeFotos: '',
    nomeFornecedorFotografia: '',
    nomeFornecedorFilmagem: '',
    nomeFornecedorDocesFinos: '',
    nomeFornecedorCascataDeChocolate: '',
    nomeFornecedorAcai: '',
    nomeFornecedorBuffet: '',
    nomeFornecedorCoquetel: '',
    nomeFornecedorBoloFake: '',
    nomeFornecedorBoloCorte: '',
    nomeFornecedorBebidas: '',
    nomeFornecedorChopp: '',
    nomeFornecedorDJ: '',
    nomeFornecedorBartender: '',
    nomeFornecedorPista: '',
    nomeFornecedorMaquiagem: '',
    nomeFornecedorPenteado: '',
    nomeFornecedorVestido: '',
    nomeFornecedorPlaquinhas: '',
    nomeFornecedorPortaAlianca: '',
    nomeFornecedorCestaFlorista: '',
    nomeFornecedorCarroNoiva: '',
    nomeFornecedorTrajeNoivo: '',
    espatulaSelecionada: '',
    tacasSelecionada: '',

    //Decoração
    decoracao: false,
    nomeFornecedorDecoracao: '',
    fornecedorDecoracao: '',
    telefoneFornecedorDecoracao: '',
    valorDecoracao: 0.0,
    buque: false,
    lapelas: false,
    petalas: false,

    //Lembrancinhas
    lembrancinhas: false,
    fornecedorLembrancinhas: '',
    telefoneFornecedorLembrancinhas: '',
    valorLembrancinhas: 0.0,

    //Cabine de Fotos
    cabineDeFotos: false,
    fornecedorCabineDeFotos: '',
    telefoneFornecedorCabineDeFotos: '',
    valorCabineDeFotos: 0.0,

    //Fotografia
    fotografia: false,
    fornecedorFotografia: '',
    telefoneFornecedorFotografia: '',
    valorFotografia: 0.0,
    preWedding: false,
    makingOfNoiva: false,
    makingOfNoivo: false,

    //Filmagem
    filmagem: false,
    fornecedorFilmagem: '',
    telefoneFornecedorFilmagem: '',
    valorFilmagem: 0.0,

    //Doces Finos
    docesFinos: false,
    fornecedorDocesFinos: '',
    telefoneFornecedorDocesFinos: '',
    valorDocesFinos: 0.0,
    quantidade: false,
    horarioEntrega: false,
    arrumacaoNaMesa: false,

    //Cascata de Chocolate
    cascata: false,
    fornecedorCascata: '',
    telefoneFornecedorCascata: '',
    valorCascata: 0.0,

    //Açaí
    acai: false,
    fornecedorAcai: '',
    telefoneFornecedorAcai: '',
    valorAcai: 0.0,

    //Buffet
    buffet: false,
    fornecedorBuffet: '',
    telefoneFornecedorBuffet: '',
    valorBuffet: 0.0,
    comEntradas: false,
    semEntradas: false,
    lancheDaMadrugada: false,

    //Coquetel
    coquetel: false,
    fornecedorCoquetel: '',
    telefoneFornecedorCoquetel: '',
    valorCoquetel: 0.0,
    fritoNaHora: false,
    assados: false,
    qtde: '',

    //Bolo Fake
    boloFake: false,
    fornecedorBoloFake: '',
    telefoneFornecedorBoloFake: '',
    valorBoloFake: 0.0,
    verdadeiro: false,
    alugado: false,
    inclusoDecoracao: false,

    //Bolo Corte
    boloCorte: false,
    fornecedorBoloCorte: '',
    telefoneFornecedorBoloCorte: '',
    valorBoloCorte: 0.0,
    quantidadeKg: false,
    horarioDeEntrega: false,

    //Espatula
    espatula: false,
    espatulaDecoracao: false,
    espatulaBuffet: false,
    espatulaNoiva: false,

    //Taças Brinde
    tacasBrinde: false,
    tacasDecoracao: false,
    tacasBuffet: false,
    tacasNoiva: false,

    //Bebidas
    bebidas: false,
    fornecedorBebidas: '',
    telefoneFornecedorBebidas: '',
    valorBebidas: 0.0,
    consignado: false,
    horarioDeEntregaBebidas: false,
    qtdeBebidas: false,

    //Chopp
    chopp: false,
    fornecedorChopp: '',
    telefoneFornecedorChopp: '',
    valorChopp: 0.0,
    qtdeChopp: false,
    horarioEntregaChopp: false,

    //DJ
    dj: false,
    fornecedorDJ: '',
    telefoneFornecedorDJ: '',
    valorDJ: 0.0,
    iluminacao: false,
    comCerimonia: false,
    somenteRecepcao: false,

    //Bartander
    bartander: false,
    fornecedorBartander: '',
    telefoneFornecedorBartander: '',
    valorBartander: 0.0,

    //Pista
    pista: false,
    fornecedorPista: '',
    telefoneFornecedorPista: '',
    valorPista: 0.0,
    //required this.horarioChegadaPista,
    //required this.horarioMontagemPista,

    //Entretenimentos
    entretenimentos: false,
    fornecedorEntretenimentos: '',
    //kitsTematicos: false,

    //Maquiagem
    maquiagem: false,
    fornecedorMaquiagem: '',
    telefoneFornecedorMaquiagem: '',
    valorMaquiagem: 0.0,
    //qtdePessoas: 0,
    maquiagemComPrevia: false,
    maquiagemSemPrevia: false,

    //Penteado
    penteado: false,
    fornecedorPenteado: '',
    telefoneFornecedorPenteado: '',
    valorPenteado: 0.0,
    //qtdePessoasPenteado: 0,
    penteadoComPrevia: false,
    penteadoSemPrevia: false,

    //Vestido
    vestido: false,
    fornecedorVestido: '',
    telefoneFornecedorVestido: '',
    valorVestido: 0.0,
    vestidoAlugado: false,
    confeccaoPropria: false,

    //Acessórios

    //Plaquinhas
    plaquinhas: false,
    fornecedorPlaquinhas: '',
    telefoneFornecedorPlaquinhas: '',
    valorPlaquinhas: 0.0,

    //Porta Aliança
    portaAlianca: false,
    fornecedorPortaAlianca: '',
    telefoneFornecedorPortaAlianca: '',
    valorPortaAlianca: 0.0,

    //Cesta Florista
    cestaFlorista: false,
    fornecedorCestaFlorista: '',
    telefoneFornecedorCestaFlorista: '',
    valorCestaFlorista: 0.0,

    //Carro Noiva
    carroNoiva: false,
    fornecedorCarroNoiva: '',
    telefoneFornecedorCarroNoiva: '',
    valorCarroNoiva: 0.0,

    //Traje Noivo
    trajeNoivo: false,
    fornecedorTrajeNoivo: '',
    telefoneFornecedorTrajeNoivo: '',
    valorTrajeNoivo: 0.0,
    trajeNoivoAlugado: false,
    trajeConfeccaoPropria: false,
    corTrajeNoivo: false,

    //Quantidademadrinhas epadrinhos
    qtdeMadrinhasPadrinhos: false,
    madrinhas: 0,
    padrinhos: 0,

    //Informações do Evento
    dataEvento: '',
    localCerimonia: '',
    localRecepcao: '',
    horaInicioCerimonia: '',
    numeroDeConvidados: '',
    quantidadeConvites: 0,
    dataProvavelEntregaConvite: '',
    dataProvavelConfirmacao: '',
  );

  saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final testChecklist = checklist;

    String json = jsonEncode(testChecklist);
    print('Generated json $json');
    prefs.setString('TestChecklist_Key', json);
  }

  /*loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? json = prefs.getString('TestChecklist_Key');

    if (json == null) {
    } else {
      Map<String, dynamic> map = jsonDecode(json);
      print('map $map');
      //final checklistCasamento = ChecklistCasamento.fromJson(map);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checklist de Casamento'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Informações do Evento:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.dataEvento = value;
                },
                decoration: InputDecoration(labelText: 'Data do Evento'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.localCerimonia = value;
                },
                decoration: InputDecoration(labelText: 'Local da Cerimônia'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.localRecepcao = value;
                },
                decoration: InputDecoration(labelText: 'Local da Recepção'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.horaInicioCerimonia = value;
                },
                decoration:
                    InputDecoration(labelText: 'Hora de Início da Cerimônia'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.numeroDeConvidados = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Número de convidados'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.quantidadeConvites = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Quantidade de Convites'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.dataProvavelEntregaConvite = value;
                },
                decoration: InputDecoration(
                    labelText: 'Data Provável para Entrega de Convite'),
              ),
              TextFormField(
                onChanged: (value) {
                  checklist.dataProvavelConfirmacao = value;
                },
                decoration: InputDecoration(
                    labelText: 'Data Provável para Confirmação (Receptivo)'),
              ),
              SizedBox(height: 20),
              /*Text(
                'Checklist de Decoração:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              */

              /* Verifica se vai haver o serviço de decoração */
              CheckboxListTile(
                title: Text('Decoração'),
                value: checklist.decoracao,
                onChanged: (value) {
                  setState(() {
                    checklist.decoracao = value ?? false;
                  });
                },
              ),
              if (checklist.decoracao)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorDecoracao =
                                selectedItem.value.toString();
                            checklist.nomeFornecedorDecoracao =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDecoracao = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorDecoracao = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                      /*CheckboxListTile(
                        title: Text('Buquê'),
                        value: checklist.buque,
                        onChanged: (value) {
                          setState(() {
                            checklist.buque = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Lapelas'),
                        value: checklist.lapelas,
                        onChanged: (value) {
                          setState(() {
                            checklist.lapelas = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Pétalas'),
                        value: checklist.petalas,
                        onChanged: (value) {
                          setState(() {
                            checklist.petalas = value ?? false;
                          });
                        },
                      ),*/
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de lembrancinhas */
              CheckboxListTile(
                title: Text('Lembrançinhas'),
                value: checklist.lembrancinhas,
                onChanged: (value) {
                  setState(() {
                    checklist.lembrancinhas = value ?? false;
                  });
                },
              ),
              if (checklist.lembrancinhas)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem2,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorLembrancinhas =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem2.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorLembrancinhas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorLembrancinhas = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),
              /* Vefifica se vai haver o serviço de cabine de fotos */
              CheckboxListTile(
                title: Text('Cabine de Fotos'),
                value: checklist.cabineDeFotos,
                onChanged: (value) {
                  setState(() {
                    checklist.cabineDeFotos = value ?? false;
                  });
                },
              ),
              if (checklist.cabineDeFotos)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem3,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorCabineDeFotos =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem3.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCabineDeFotos = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorCabineDeFotos = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de fotografia 
              
                  - Pré wedding
                  - Making of noivo
                  - Making of noiva
              */
              CheckboxListTile(
                title: Text('Fotografia'),
                value: checklist.fotografia,
                onChanged: (value) {
                  setState(() {
                    checklist.fotografia = value ?? false;
                  });
                },
              ),
              if (checklist.fotografia)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem4,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorFotografia =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem4.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorFotografia = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorFotografia = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de filmagem */
              CheckboxListTile(
                title: Text('Filmagem'),
                value: checklist.filmagem,
                onChanged: (value) {
                  setState(() {
                    checklist.filmagem = value ?? false;
                  });
                },
              ),
              if (checklist.filmagem)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem5,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorFilmagem =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem5.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorFilmagem = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorFilmagem = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de doces finos 
                  - Quantidade
                  - Horário entrega
                  - Arrumação na mesa
              */
              CheckboxListTile(
                title: Text('Doces Finos'),
                value: checklist.docesFinos,
                onChanged: (value) {
                  setState(() {
                    checklist.docesFinos = value ?? false;
                  });
                },
              ),
              if (checklist.docesFinos)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem6,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorDocesFinos =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem6.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDocesFinos = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorDocesFinos = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de cascata de chocolate */
              CheckboxListTile(
                title: Text('Cascata de Chocolate'),
                value: checklist.cascata,
                onChanged: (value) {
                  setState(() {
                    checklist.cascata = value ?? false;
                  });
                },
              ),
              if (checklist.cascata)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem7,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorCascataDeChocolate =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem7.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCascata = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorCascata = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de açaí */
              CheckboxListTile(
                title: Text('Açaí'),
                value: checklist.acai,
                onChanged: (value) {
                  setState(() {
                    checklist.acai = value ?? false;
                  });
                },
              ),
              if (checklist.acai)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem8,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorAcai =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem8.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorAcai = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorAcai = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de buffet 
                  - Com entradas
                  - Sem entradas
                  - Lanche da madrugada
              */
              CheckboxListTile(
                title: Text('Buffet'),
                value: checklist.buffet,
                onChanged: (value) {
                  setState(() {
                    checklist.buffet = value ?? false;
                  });
                },
              ),
              if (checklist.buffet)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem9,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorBuffet =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem9.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBuffet = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorBuffet = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Vefifica se vai haver o serviço de coquetel 
                  - Frito na hora
                  - Assados
                  - Quantidade
              */
              CheckboxListTile(
                title: Text('Coquetel'),
                value: checklist.coquetel,
                onChanged: (value) {
                  setState(() {
                    checklist.coquetel = value ?? false;
                  });
                },
              ),
              if (checklist.coquetel)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem10,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorCoquetel =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem10.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCoquetel = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorCoquetel = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /*Verifica se vai haver o serviço de Bolo Fake*/
              CheckboxListTile(
                title: Text('Bolo Fake'),
                value: checklist.boloFake,
                onChanged: (value) {
                  setState(() {
                    checklist.boloFake = value ?? false;
                  });
                },
              ),
              if (checklist.boloFake)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem11,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorBoloFake =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem11.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBoloFake = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorBoloFake = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai haver o serviço de bolo de corte */
              CheckboxListTile(
                title: Text('Bolo Corte'),
                value: checklist.boloCorte,
                onChanged: (value) {
                  setState(() {
                    checklist.boloCorte = value ?? false;
                  });
                },
              ),
              if (checklist.boloCorte)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem12,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorBoloCorte =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem12.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBoloCorte = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorBoloCorte = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai haver o serviço de espátula */
              CheckboxListTile(
                title: Text('Espatula'),
                value: checklist.espatula,
                onChanged: (value) {
                  setState(() {
                    checklist.espatula = value ?? false;
                  });
                },
              ),
              if (checklist.espatula)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem13,
                          builder: (BuildContext context, String value, _) {
                            checklist.espatulaSelecionada =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o responsável'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem13.value = escolha.toString(),
                              items: selecao
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                    ],
                  ),
                ),

              /* Verifica se vai haver o serviço de taças brinde */
              CheckboxListTile(
                title: Text('Taças Brinde'),
                value: checklist.tacasBrinde,
                onChanged: (value) {
                  setState(() {
                    checklist.tacasBrinde = value ?? false;
                  });
                },
              ),
              if (checklist.tacasBrinde)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem14,
                          builder: (BuildContext context, String value, _) {
                            checklist.tacasSelecionada =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o responsável'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem14.value = escolha.toString(),
                              items: selecao
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                    ],
                  ),
                ),

              /* Verifica se vai haver o serviço de bebibas */
              CheckboxListTile(
                title: Text('Bebidas'),
                value: checklist.bebidas,
                onChanged: (value) {
                  setState(() {
                    checklist.bebidas = value ?? false;
                  });
                },
              ),
              if (checklist.bebidas)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem15,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorBebidas =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem15.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBebidas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorBebidas = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de chopp */
              CheckboxListTile(
                title: Text('Chopp'),
                value: checklist.chopp,
                onChanged: (value) {
                  setState(() {
                    checklist.chopp = value ?? false;
                  });
                },
              ),
              if (checklist.chopp)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem16,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorChopp =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem16.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorChopp = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorChopp = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),
              /* Verifica se vai contratar o serviço de DJ */
              CheckboxListTile(
                title: Text('DJ'),
                value: checklist.dj,
                onChanged: (value) {
                  setState(() {
                    checklist.dj = value ?? false;
                  });
                },
              ),
              if (checklist.dj)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem17,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorDJ =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem17.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDJ = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.telefoneFornecedorDJ = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verfifica se vai contratar o serviço de bartender */
              CheckboxListTile(
                title: Text('Bartander'),
                value: checklist.bartander,
                onChanged: (value) {
                  setState(() {
                    checklist.bartander = value ?? false;
                  });
                },
              ),
              if (checklist.bartander)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem18,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorBartender =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem18.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBartander = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorBartander = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de pista */
              CheckboxListTile(
                title: Text('Pista'),
                value: checklist.pista,
                onChanged: (value) {
                  setState(() {
                    checklist.pista = value ?? false;
                  });
                },
              ),
              if (checklist.pista)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem19,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorPista =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem19.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPista = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorPista = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de entretenimentos */
              CheckboxListTile(
                title: Text('Entretenimentos'),
                value: checklist.entretenimentos,
                onChanged: (value) {
                  setState(() {
                    checklist.entretenimentos = value ?? false;
                  });
                },
              ),
              if (checklist.entretenimentos)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorEntretenimentos = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),
              /* Terminar a lógica aqui */

              /* Verifica se vai contratar o serviço de maquiagem */
              CheckboxListTile(
                title: Text('Maquiagem'),
                value: checklist.maquiagem,
                onChanged: (value) {
                  setState(() {
                    checklist.maquiagem = value ?? false;
                  });
                },
              ),
              if (checklist.maquiagem)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem20,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorMaquiagem =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem20.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorMaquiagem = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorMaquiagem = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de penteado */
              CheckboxListTile(
                title: Text('Penteado'),
                value: checklist.penteado,
                onChanged: (value) {
                  setState(() {
                    checklist.penteado = value ?? false;
                  });
                },
              ),
              if (checklist.penteado)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem21,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorPenteado =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem21.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPenteado = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorPenteado = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de vestido */
              CheckboxListTile(
                title: Text('Vestido'),
                value: checklist.vestido,
                onChanged: (value) {
                  setState(() {
                    checklist.vestido = value ?? false;
                  });
                },
              ),
              if (checklist.vestido)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CheckboxListTile(
                        title: Text('Alugado'),
                        value: checklist.vestidoAlugado,
                        onChanged: (value) {
                          setState(() {
                            checklist.vestidoAlugado = value ?? false;
                          });
                        },
                      ),
                      if (checklist.vestidoAlugado)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: selectedItem22,
                                  builder:
                                      (BuildContext context, String value, _) {
                                    return DropdownButton<String>(
                                      hint:
                                          const Text('Selecione o fornecedor'),
                                      value: (value.isEmpty) ? null : value,
                                      onChanged: (escolha) => selectedItem22
                                          .value = escolha.toString(),
                                      items: fornecedores
                                          .map(
                                            (opcao) => DropdownMenuItem(
                                              value: opcao,
                                              child: Text(opcao),
                                            ),
                                          )
                                          .toList(),
                                    );
                                    //testeSalvamento = testeSalvamento + selectedItem.toString();
                                  }),
                              TextFormField(
                                onChanged: (value) {
                                  checklist.telefoneFornecedorVestido = value;
                                },
                                decoration: InputDecoration(
                                    labelText: 'Telefone do Fornecedor'),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                height: 200,
                                width: double.infinity,
                                child: TextFormField(
                                  onChanged: (value) {
                                    checklist.fornecedorVestido = value;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Observações sobre o serviço',
                                    border: OutlineInputBorder(),
                                    //contentPadding: EdgeInsets.symmetric(vertical: 100),
                                  ),
                                  maxLines: null,
                                  textAlignVertical: TextAlignVertical.top,
                                  expands: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      CheckboxListTile(
                        title: Text('Confecção Própria'),
                        value: checklist.confeccaoPropria,
                        onChanged: (value) {
                          setState(() {
                            checklist.confeccaoPropria = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de plaquinhas */
              CheckboxListTile(
                title: Text('Plaquinhas'),
                value: checklist.plaquinhas,
                onChanged: (value) {
                  setState(() {
                    checklist.plaquinhas = value ?? false;
                  });
                },
              ),
              if (checklist.plaquinhas)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem23,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorPlaquinhas =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem23.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPlaquinhas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorPlaquinhas = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de porta-aliança */
              CheckboxListTile(
                title: Text('Porta-Aliança'),
                value: checklist.portaAlianca,
                onChanged: (value) {
                  setState(() {
                    checklist.portaAlianca = value ?? false;
                  });
                },
              ),
              if (checklist.portaAlianca)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem24,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorPortaAlianca =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem24.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPortaAlianca = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorPortaAlianca = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de cesta para florista */
              CheckboxListTile(
                title: Text('Cesta Florista'),
                value: checklist.cestaFlorista,
                onChanged: (value) {
                  setState(() {
                    checklist.cestaFlorista = value ?? false;
                  });
                },
              ),
              if (checklist.cestaFlorista)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem25,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorCestaFlorista =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem25.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCestaFlorista = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorCestaFlorista = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de carro da noiva */
              CheckboxListTile(
                title: Text('Carro Noiva'),
                value: checklist.carroNoiva,
                onChanged: (value) {
                  setState(() {
                    checklist.carroNoiva = value ?? false;
                  });
                },
              ),
              if (checklist.carroNoiva)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: selectedItem26,
                          builder: (BuildContext context, String value, _) {
                            checklist.nomeFornecedorCarroNoiva =
                                selectedItem.value.toString();
                            return DropdownButton<String>(
                              hint: const Text('Selecione o fornecedor'),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  selectedItem26.value = escolha.toString(),
                              items: fornecedores
                                  .map(
                                    (opcao) => DropdownMenuItem(
                                      value: opcao,
                                      child: Text(opcao),
                                    ),
                                  )
                                  .toList(),
                            );
                            //testeSalvamento = testeSalvamento + selectedItem.toString();
                          }),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPista = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: TextFormField(
                          onChanged: (value) {
                            checklist.fornecedorPista = value;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            labelText: 'Observações sobre o serviço',
                            border: OutlineInputBorder(),
                            //contentPadding: EdgeInsets.symmetric(vertical: 100),
                          ),
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                        ),
                      ),
                    ],
                  ),
                ),

              /* Verifica se vai contratar o serviço de traje do noivo */
              CheckboxListTile(
                title: Text('Traje Noivo'),
                value: checklist.trajeNoivo,
                onChanged: (value) {
                  setState(() {
                    checklist.trajeNoivo = value ?? false;
                  });
                },
              ),
              if (checklist.trajeNoivo)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CheckboxListTile(
                        title: Text('Alugado'),
                        value: checklist.trajeNoivoAlugado,
                        onChanged: (value) {
                          setState(() {
                            checklist.trajeNoivoAlugado = value ?? false;
                          });
                        },
                      ),
                      if (checklist.trajeNoivoAlugado)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: selectedItem27,
                                  builder:
                                      (BuildContext context, String value, _) {
                                    return DropdownButton<String>(
                                      hint:
                                          const Text('Selecione o fornecedor'),
                                      value: (value.isEmpty) ? null : value,
                                      onChanged: (escolha) => selectedItem27
                                          .value = escolha.toString(),
                                      items: fornecedores
                                          .map(
                                            (opcao) => DropdownMenuItem(
                                              value: opcao,
                                              child: Text(opcao),
                                            ),
                                          )
                                          .toList(),
                                    );
                                    //testeSalvamento = testeSalvamento + selectedItem.toString();
                                  }),
                              TextFormField(
                                onChanged: (value) {
                                  checklist.telefoneFornecedorPista = value;
                                },
                                decoration: InputDecoration(
                                    labelText: 'Telefone do Fornecedor'),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                height: 200,
                                width: double.infinity,
                                child: TextFormField(
                                  onChanged: (value) {
                                    checklist.fornecedorPista = value;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Observações sobre o serviço',
                                    border: OutlineInputBorder(),
                                    //contentPadding: EdgeInsets.symmetric(vertical: 100),
                                  ),
                                  maxLines: null,
                                  textAlignVertical: TextAlignVertical.top,
                                  expands: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      CheckboxListTile(
                        title: Text('Confecção Própria'),
                        value: checklist.trajeConfeccaoPropria,
                        onChanged: (value) {
                          setState(() {
                            checklist.trajeNoivo = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text('Salvar Checklist'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
