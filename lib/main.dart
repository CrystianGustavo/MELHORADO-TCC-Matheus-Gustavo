import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

String testeSalvamento = '';

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
    //Decoração
    decoracao: false,
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
    forncedorDJ: '',
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorDecoracao = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDecoracao = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorDecoracao =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
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
                      ),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorLembrancinhas = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorLembrancinhas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorLembrancinhas =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorCabineDeFotos = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCabineDeFotos = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorCabineDeFotos =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorFotografia = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorFotografia = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorFotografia =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Pré-Wedding'),
                        value: checklist.preWedding,
                        onChanged: (value) {
                          setState(() {
                            checklist.preWedding = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Making Of Noiva'),
                        value: checklist.makingOfNoiva,
                        onChanged: (value) {
                          setState(() {
                            checklist.makingOfNoiva = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Making Of Noivo'),
                        value: checklist.makingOfNoivo,
                        onChanged: (value) {
                          setState(() {
                            checklist.makingOfNoivo = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorFilmagem = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorFilmagem = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorFilmagem =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorDocesFinos = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDocesFinos = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorDocesFinos =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.quantidade = false;
                        },
                        decoration: InputDecoration(labelText: 'Quantidade'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.horarioDeEntrega = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Horário de Entrega'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.arrumacaoNaMesa = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Arrumação na Mesa'),
                      ),
                      /*Falta colocar aqui os campos de horário entrega e arrumação na mesa*/
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorCascata = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCascata = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorCascata =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorAcai = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorAcai = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorAcai = double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorBuffet = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBuffet = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorBuffet = double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Com Entradas'),
                        value: checklist.comEntradas,
                        onChanged: (value) {
                          setState(() {
                            checklist.comEntradas = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Sem Entradas'),
                        value: checklist.semEntradas,
                        onChanged: (value) {
                          setState(() {
                            checklist.semEntradas = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Lanche da Madrugada'),
                        value: checklist.lancheDaMadrugada,
                        onChanged: (value) {
                          setState(() {
                            checklist.lancheDaMadrugada = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorCoquetel = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCoquetel = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorCoquetel =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.quantidade = false;
                        },
                        decoration: InputDecoration(labelText: 'Quantidade'),
                      ),
                      CheckboxListTile(
                        title: Text('Frito na Hora'),
                        value: checklist.fritoNaHora,
                        onChanged: (value) {
                          setState(() {
                            checklist.fritoNaHora = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Assados'),
                        value: checklist.assados,
                        onChanged: (value) {
                          setState(() {
                            checklist.assados = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorBoloFake = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBoloFake = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorBoloFake =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Verdadeiro'),
                        value: checklist.verdadeiro,
                        onChanged: (value) {
                          setState(() {
                            checklist.verdadeiro = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Alugado'),
                        value: checklist.alugado,
                        onChanged: (value) {
                          setState(() {
                            checklist.alugado = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Incluso na Decoração'),
                        value: checklist.inclusoDecoracao,
                        onChanged: (value) {
                          setState(() {
                            checklist.inclusoDecoracao = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorBoloCorte = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBoloCorte = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorBoloCorte =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.quantidadeKg = false;
                        },
                        decoration: InputDecoration(labelText: 'Quantidade KG'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.horarioDeEntrega = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Horário de Chegada'),
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
                      CheckboxListTile(
                        title: Text('Decoração'),
                        value: checklist.espatulaDecoracao,
                        onChanged: (value) {
                          setState(() {
                            checklist.espatulaDecoracao = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Buffet'),
                        value: checklist.espatulaBuffet,
                        onChanged: (value) {
                          setState(() {
                            checklist.espatulaBuffet = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Noiva'),
                        value: checklist.espatulaNoiva,
                        onChanged: (value) {
                          setState(() {
                            checklist.espatulaNoiva = value ?? false;
                          });
                        },
                      ),
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
                      CheckboxListTile(
                        title: Text('Decoração'),
                        value: checklist.tacasDecoracao,
                        onChanged: (value) {
                          setState(() {
                            checklist.tacasDecoracao = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Buffet'),
                        value: checklist.tacasBuffet,
                        onChanged: (value) {
                          setState(() {
                            checklist.tacasBuffet = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Noiva'),
                        value: checklist.tacasNoiva,
                        onChanged: (value) {
                          setState(() {
                            checklist.tacasNoiva = value ?? false;
                          });
                        },
                      ),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorBebidas = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBebidas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorBebidas =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.horarioDeEntregaBebidas = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Horário de Entrega'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.qtdeBebidas = false;
                        },
                        decoration: InputDecoration(labelText: 'Quantidade'),
                      ),
                      CheckboxListTile(
                        title: Text('Consignado'),
                        value: checklist.consignado,
                        onChanged: (value) {
                          setState(() {
                            checklist.consignado = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorChopp = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorChopp = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorChopp = double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      //Quantidade de Horário de Entrega
                      TextFormField(
                        onChanged: (value) {
                          checklist.qtdeChopp = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Quantidade de Chopp'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.horarioEntregaChopp = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Horário de Entrega'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.dj = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorDJ = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorDJ = double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Iluminação'),
                        value: checklist.iluminacao,
                        onChanged: (value) {
                          setState(() {
                            checklist.iluminacao = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Com Cerimônia'),
                        value: checklist.comCerimonia,
                        onChanged: (value) {
                          setState(() {
                            checklist.comCerimonia = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Somente Recepção'),
                        value: checklist.somenteRecepcao,
                        onChanged: (value) {
                          setState(() {
                            checklist.somenteRecepcao = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorBartander = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorBartander = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorBartander =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorPista = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPista = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorPista = double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorMaquiagem = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorMaquiagem = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorMaquiagem =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Maquiagem com Prévia'),
                        value: checklist.maquiagemComPrevia,
                        onChanged: (value) {
                          setState(() {
                            checklist.maquiagemComPrevia = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Maquiagem sem Prévia'),
                        value: checklist.maquiagemSemPrevia,
                        onChanged: (value) {
                          setState(() {
                            checklist.maquiagemSemPrevia = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorPenteado = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPenteado = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorPenteado =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Penteado com Prévia'),
                        value: checklist.penteadoComPrevia,
                        onChanged: (value) {
                          setState(() {
                            checklist.penteadoComPrevia = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Penteado sem Prévia'),
                        value: checklist.penteadoSemPrevia,
                        onChanged: (value) {
                          setState(() {
                            checklist.penteadoSemPrevia = value ?? false;
                          });
                        },
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
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorVestido = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorVestido = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorVestido =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Alugado'),
                        value: checklist.alugado,
                        onChanged: (value) {
                          setState(() {
                            checklist.alugado = value ?? false;
                          });
                        },
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorPlaquinhas = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPlaquinhas = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorPlaquinhas =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorPortaAlianca = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorPortaAlianca = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorPortaAlianca =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorCestaFlorista = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCestaFlorista = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorCestaFlorista =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorCarroNoiva = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorCarroNoiva = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorCarroNoiva =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
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
                      TextFormField(
                        onChanged: (value) {
                          checklist.fornecedorTrajeNoivo = value;
                        },
                        decoration:
                            InputDecoration(labelText: 'Nome do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.telefoneFornecedorTrajeNoivo = value;
                        },
                        decoration: InputDecoration(
                            labelText: 'Telefone do Fornecedor'),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          checklist.valorTrajeNoivo =
                              double.tryParse(value) ?? 0.0;
                        },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'Valor do Serviço'),
                      ),
                      CheckboxListTile(
                        title: Text('Alugado'),
                        value: checklist.trajeNoivoAlugado,
                        onChanged: (value) {
                          setState(() {
                            checklist.trajeNoivoAlugado = value ?? false;
                          });
                        },
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
                      TextFormField(
                        onChanged: (value) {
                          checklist.corTrajeNoivo = false;
                        },
                        decoration:
                            InputDecoration(labelText: 'Cor Traje Noivo'),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Salvar Checklist'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
