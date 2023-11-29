class ChecklistCasamento {
  String nomeFornecedorDecoracao;
  String nomeFornecedorLembrancinhas;
  String nomeFornecedorCabineDeFotos;
  String nomeFornecedorFotografia;
  String nomeFornecedorFilmagem;
  String nomeFornecedorDocesFinos;
  String nomeFornecedorCascataDeChocolate;
  String nomeFornecedorAcai;
  String nomeFornecedorBuffet;
  String nomeFornecedorCoquetel;
  String nomeFornecedorBoloFake;
  String nomeFornecedorBoloCorte;
  String nomeFornecedorBebidas;
  String nomeFornecedorChopp;
  String nomeFornecedorDJ;
  String nomeFornecedorBartender;
  String nomeFornecedorPista;
  String nomeFornecedorMaquiagem;
  String nomeFornecedorPenteado;
  String nomeFornecedorVestido;
  String nomeFornecedorPlaquinhas;
  String nomeFornecedorPortaAlianca;
  String nomeFornecedorCestaFlorista;
  String nomeFornecedorCarroNoiva;
  String nomeFornecedorTrajeNoivo;

  //Decoração
  bool decoracao;
  String fornecedorDecoracao;
  String telefoneFornecedorDecoracao;
  double valorDecoracao;
  bool buque; // Novo atributo
  bool lapelas; // Novo atributo
  bool petalas; // Novo atributo

  //Lembrancinhas
  bool lembrancinhas;
  String fornecedorLembrancinhas;
  String telefoneFornecedorLembrancinhas;
  double valorLembrancinhas;

  //Cabine de Fotos
  bool cabineDeFotos;
  String fornecedorCabineDeFotos;
  String telefoneFornecedorCabineDeFotos;
  double valorCabineDeFotos;

  //Fotografia
  bool fotografia;
  String fornecedorFotografia;
  String telefoneFornecedorFotografia;
  double valorFotografia;
  bool preWedding;
  bool makingOfNoiva;
  bool makingOfNoivo;

  //Filmagem
  bool filmagem;
  String fornecedorFilmagem;
  String telefoneFornecedorFilmagem;
  double valorFilmagem;

  //Doces Finos
  bool docesFinos;
  String fornecedorDocesFinos;
  String telefoneFornecedorDocesFinos;
  double valorDocesFinos;
  bool quantidade;
  bool horarioEntrega;
  bool arrumacaoNaMesa;

  //Cascata de Chocolate
  bool cascata;
  String fornecedorCascata;
  String telefoneFornecedorCascata;
  double valorCascata;

  //Açaí
  bool acai;
  String fornecedorAcai;
  String telefoneFornecedorAcai;
  double valorAcai;

  //Buffet
  bool buffet;
  String fornecedorBuffet;
  String telefoneFornecedorBuffet;
  double valorBuffet;
  bool comEntradas;
  bool semEntradas;
  bool lancheDaMadrugada;

  //Coquetel
  bool coquetel;
  String fornecedorCoquetel;
  String telefoneFornecedorCoquetel;
  double valorCoquetel;
  bool fritoNaHora;
  bool assados;
  String qtde;

  //Bolo Fake
  bool boloFake;
  String fornecedorBoloFake;
  String telefoneFornecedorBoloFake;
  double valorBoloFake;
  bool verdadeiro;
  bool alugado;
  bool inclusoDecoracao;

  //Bolo de Corte
  bool boloCorte;
  String fornecedorBoloCorte;
  String telefoneFornecedorBoloCorte;
  double valorBoloCorte;
  bool quantidadeKg;
  bool horarioDeEntrega;

  //Espatula
  bool espatula;
  bool espatulaDecoracao;
  bool espatulaBuffet;
  bool espatulaNoiva;
  String espatulaSelecionada;

  //Tacas Brinde
  bool tacasBrinde;
  bool tacasDecoracao;
  bool tacasBuffet;
  bool tacasNoiva;
  String tacasSelecionada;

  //Bebidas
  bool bebidas;
  String fornecedorBebidas;
  String telefoneFornecedorBebidas;
  double valorBebidas;
  bool qtdeBebidas;
  bool consignado;
  bool horarioDeEntregaBebidas;

  //Chopp
  bool chopp;
  String fornecedorChopp;
  String telefoneFornecedorChopp;
  double valorChopp;
  bool qtdeChopp;
  bool horarioEntregaChopp;

  //Dj
  bool dj;
  String fornecedorDJ;
  String telefoneFornecedorDJ;
  double valorDJ;
  bool iluminacao;
  bool comCerimonia;
  bool somenteRecepcao;

  //Bartander
  bool bartander;
  String fornecedorBartander;
  String telefoneFornecedorBartander;
  double valorBartander;

  //Pista
  bool pista;
  String fornecedorPista;
  String telefoneFornecedorPista;
  double valorPista;
  //bool horarioChegadaPista;
  //bool horarioMontagemPista;

  //Entretenimentos
  bool entretenimentos;
  String fornecedorEntretenimentos;

  //Maquiagem
  bool maquiagem;
  String fornecedorMaquiagem;
  String telefoneFornecedorMaquiagem;
  double valorMaquiagem;
  //double qtdePessoas;
  bool maquiagemComPrevia;
  bool maquiagemSemPrevia;

  //Penteado
  bool penteado;
  String fornecedorPenteado;
  String telefoneFornecedorPenteado;
  double valorPenteado;
  //double qtdePessoasPenteado;
  bool penteadoComPrevia;
  bool penteadoSemPrevia;

  //Vestido
  bool vestido;
  String fornecedorVestido;
  String telefoneFornecedorVestido;
  double valorVestido;
  bool vestidoAlugado;
  bool confeccaoPropria;

  //Acessórios

  //Plaquinhas
  bool plaquinhas;
  String fornecedorPlaquinhas;
  String telefoneFornecedorPlaquinhas;
  double valorPlaquinhas;

  //Porta Aliança
  bool portaAlianca;
  String fornecedorPortaAlianca;
  String telefoneFornecedorPortaAlianca;
  double valorPortaAlianca;

  //Cesta para Florista
  bool cestaFlorista;
  String fornecedorCestaFlorista;
  String telefoneFornecedorCestaFlorista;
  double valorCestaFlorista;

  //Carro Noiva
  bool carroNoiva;
  String fornecedorCarroNoiva;
  String telefoneFornecedorCarroNoiva;
  double valorCarroNoiva;

  //Traje Noivo
  bool trajeNoivo;
  String fornecedorTrajeNoivo;
  String telefoneFornecedorTrajeNoivo;
  double valorTrajeNoivo;
  bool trajeNoivoAlugado;
  bool trajeConfeccaoPropria;
  bool corTrajeNoivo;

  //Qtde madrinhas e padrinhos
  bool qtdeMadrinhasPadrinhos;
  int madrinhas;
  int padrinhos;

  //Informações do Evento
  String dataEvento;
  String localCerimonia;
  String localRecepcao;
  String horaInicioCerimonia;
  int quantidadeConvites;
  String dataProvavelEntregaConvite;
  String dataProvavelConfirmacao;

  var numeroDeConvidados;

  ChecklistCasamento({
    //Decoração
    required this.decoracao,
    required this.nomeFornecedorDecoracao,
    required this.fornecedorDecoracao,
    required this.telefoneFornecedorDecoracao,
    required this.valorDecoracao,
    required this.buque, // Novo atributo
    required this.lapelas, // Novo atributo
    required this.petalas, // Novo atributo

    //Lembrançinhas
    required this.lembrancinhas,
    required this.fornecedorLembrancinhas,
    required this.telefoneFornecedorLembrancinhas,
    required this.valorLembrancinhas,

    //Cabine de Fotos
    required this.cabineDeFotos,
    required this.fornecedorCabineDeFotos,
    required this.telefoneFornecedorCabineDeFotos,
    required this.valorCabineDeFotos,

    //Fotografia
    required this.fotografia,
    required this.fornecedorFotografia,
    required this.telefoneFornecedorFotografia,
    required this.valorFotografia,
    required this.preWedding,
    required this.makingOfNoiva,
    required this.makingOfNoivo,

    //Filmagem
    required this.filmagem,
    required this.fornecedorFilmagem,
    required this.telefoneFornecedorFilmagem,
    required this.valorFilmagem,

    //Doces Finos
    required this.docesFinos,
    required this.fornecedorDocesFinos,
    required this.telefoneFornecedorDocesFinos,
    required this.valorDocesFinos,
    required this.quantidade,
    required this.horarioEntrega,
    required this.arrumacaoNaMesa,

    //Cascata de Chocolate
    required this.cascata,
    required this.fornecedorCascata,
    required this.telefoneFornecedorCascata,
    required this.valorCascata,

    //Açaí
    required this.acai,
    required this.fornecedorAcai,
    required this.telefoneFornecedorAcai,
    required this.valorAcai,

    //Buffet
    required this.buffet,
    required this.fornecedorBuffet,
    required this.telefoneFornecedorBuffet,
    required this.valorBuffet,
    required this.comEntradas,
    required this.semEntradas,
    required this.lancheDaMadrugada,

    //Coquetel
    required this.coquetel,
    required this.fornecedorCoquetel,
    required this.telefoneFornecedorCoquetel,
    required this.valorCoquetel,
    required this.fritoNaHora,
    required this.assados,
    required this.qtde,

    //Bolo Fake
    required this.boloFake,
    required this.fornecedorBoloFake,
    required this.telefoneFornecedorBoloFake,
    required this.valorBoloFake,
    required this.verdadeiro,
    required this.alugado,
    required this.inclusoDecoracao,

    //Bolo de Corte
    required this.boloCorte,
    required this.fornecedorBoloCorte,
    required this.telefoneFornecedorBoloCorte,
    required this.valorBoloCorte,
    required this.quantidadeKg,
    required this.horarioDeEntrega,

    //Espatula
    required this.espatula,
    required this.espatulaDecoracao,
    required this.espatulaBuffet,
    required this.espatulaNoiva,

    //Taças Brinde
    required this.tacasBrinde,
    required this.tacasDecoracao,
    required this.tacasBuffet,
    required this.tacasNoiva,

    //Bebidas
    required this.bebidas,
    required this.fornecedorBebidas,
    required this.telefoneFornecedorBebidas,
    required this.valorBebidas,
    required this.consignado,
    required this.horarioDeEntregaBebidas,
    required this.qtdeBebidas,

    //Chopp
    required this.chopp,
    required this.fornecedorChopp,
    required this.telefoneFornecedorChopp,
    required this.valorChopp,
    required this.qtdeChopp,
    required this.horarioEntregaChopp,

    //DJ
    required this.dj,
    required this.fornecedorDJ,
    required this.telefoneFornecedorDJ,
    required this.valorDJ,
    required this.iluminacao,
    required this.comCerimonia,
    required this.somenteRecepcao,

    //Bartander
    required this.bartander,
    required this.fornecedorBartander,
    required this.telefoneFornecedorBartander,
    required this.valorBartander,

    //Pista
    required this.pista,
    required this.fornecedorPista,
    required this.telefoneFornecedorPista,
    required this.valorPista,
    //required this.horarioChegadaPista,
    //required this.horarioMontagemPista,

    //Entretenimentos
    required this.entretenimentos,
    required this.fornecedorEntretenimentos,

    //Maquiagem
    required this.maquiagem,
    required this.fornecedorMaquiagem,
    required this.telefoneFornecedorMaquiagem,
    required this.valorMaquiagem,
    //required this.qtdePessoas,
    required this.maquiagemComPrevia,
    required this.maquiagemSemPrevia,

    //Penteado
    required this.penteado,
    required this.fornecedorPenteado,
    required this.telefoneFornecedorPenteado,
    required this.valorPenteado,
    //required this.qtdePessoasPenteado,
    required this.penteadoComPrevia,
    required this.penteadoSemPrevia,

    //Vestido
    required this.vestido,
    required this.fornecedorVestido,
    required this.telefoneFornecedorVestido,
    required this.valorVestido,
    required this.vestidoAlugado,
    required this.confeccaoPropria,

    //Acessórios

    //Plaquinhas
    required this.plaquinhas,
    required this.fornecedorPlaquinhas,
    required this.telefoneFornecedorPlaquinhas,
    required this.valorPlaquinhas,

    //Porta Aliança
    required this.portaAlianca,
    required this.fornecedorPortaAlianca,
    required this.telefoneFornecedorPortaAlianca,
    required this.valorPortaAlianca,

    //Cesta para Florista
    required this.cestaFlorista,
    required this.fornecedorCestaFlorista,
    required this.telefoneFornecedorCestaFlorista,
    required this.valorCestaFlorista,

    //Carro Noiva
    required this.carroNoiva,
    required this.fornecedorCarroNoiva,
    required this.telefoneFornecedorCarroNoiva,
    required this.valorCarroNoiva,

    //Traje Noivo
    required this.trajeNoivo,
    required this.fornecedorTrajeNoivo,
    required this.telefoneFornecedorTrajeNoivo,
    required this.valorTrajeNoivo,
    required this.trajeNoivoAlugado,
    required this.trajeConfeccaoPropria,
    required this.corTrajeNoivo,

    //Qtde madrinhas e padrinhos
    required this.qtdeMadrinhasPadrinhos,
    required this.madrinhas,
    required this.padrinhos,

    //Informações do evento
    required this.dataEvento,
    required this.localCerimonia,
    required this.localRecepcao,
    required this.horaInicioCerimonia,
    required this.numeroDeConvidados,
    required this.quantidadeConvites,
    required this.dataProvavelEntregaConvite,
    required this.dataProvavelConfirmacao,
    required this.nomeFornecedorLembrancinhas,
    required this.nomeFornecedorCabineDeFotos,
    required this.nomeFornecedorFotografia,
    required this.nomeFornecedorFilmagem,
    required this.nomeFornecedorDocesFinos,
    required this.nomeFornecedorCascataDeChocolate,
    required this.nomeFornecedorAcai,
    required this.nomeFornecedorBuffet,
    required this.nomeFornecedorCoquetel,
    required this.nomeFornecedorBoloFake,
    required this.nomeFornecedorBoloCorte,
    required this.nomeFornecedorBebidas,
    required this.nomeFornecedorChopp,
    required this.nomeFornecedorDJ,
    required this.nomeFornecedorBartender,
    required this.nomeFornecedorPista,
    required this.nomeFornecedorMaquiagem,
    required this.nomeFornecedorPenteado,
    required this.nomeFornecedorVestido,
    required this.nomeFornecedorPlaquinhas,
    required this.nomeFornecedorPortaAlianca,
    required this.nomeFornecedorCestaFlorista,
    required this.nomeFornecedorCarroNoiva,
    required this.nomeFornecedorTrajeNoivo,
    required this.espatulaSelecionada,
    required this.tacasSelecionada,
  });

  /*ChecklistCasamento.fromJson(Map<String, dynamic> json)
      : telefoneFornecedorDecoracao = json['telefoneFornecedorDecoracao'],
        fornecedorDecoracao = json['fornecedorDecoracao''];*/

  Map<String, dynamic> toJson() {
    return {
      'dataEvento': dataEvento,
      'localCerimonia': localCerimonia,
      'localRecepcao': localRecepcao,
      'horaInicioCerimonia': horaInicioCerimonia,
      'numeroDeConvidados': numeroDeConvidados,
      'quantidadeConvites': quantidadeConvites,
      'dataProvavelEntregaConvite': dataProvavelEntregaConvite,
      'dataProvavelConfirmacao': dataProvavelConfirmacao,
      'nomeFornecedorDecoracao': nomeFornecedorDecoracao,
      'telefoneFornecedorDecoracao': telefoneFornecedorDecoracao,
      'fornecedorDecoracao': fornecedorDecoracao,
      'nomeFornecedorLembrancinhas': nomeFornecedorLembrancinhas,
      'telefoneFornecedorLembrancinhas': telefoneFornecedorLembrancinhas,
      'fornecedorLembrancinhas': fornecedorLembrancinhas,
      'nomeFornecedorCabineDeFotos': nomeFornecedorCabineDeFotos,
      'telefoneFornecedorCabineDeFotos': telefoneFornecedorCabineDeFotos,
      'fornecedorCabineDeFotos': fornecedorCabineDeFotos,
      'nomeFornecedorFotografia': nomeFornecedorFotografia,
      'telefoneFornecedorFotografia': telefoneFornecedorFotografia,
      'fornecedorFotografia': fornecedorFotografia,
      'nomeFornecedorFilmagem': nomeFornecedorFilmagem,
      'telefoneFornecedorFilmagem': telefoneFornecedorFilmagem,
      'fornecedorFilmagem': fornecedorFilmagem,
      'nomeFornecedorDocesFinos': nomeFornecedorDocesFinos,
      'telefoneFornecedorDocesFinos': telefoneFornecedorDocesFinos,
      'fornecedorDocesFinos': fornecedorDocesFinos,
      'nomeFornecedorCascataDeChocolate': nomeFornecedorCascataDeChocolate,
      'telefoneFornecedorCascata': telefoneFornecedorCascata,
      'fornecedorCascata': fornecedorCascata,
      'nomeFornecedorAcai': nomeFornecedorAcai,
      'telefoneFornecedorAcai': telefoneFornecedorAcai,
      'fornecedorAcai': fornecedorAcai,
      'nomeFornecedorBuffet': nomeFornecedorBuffet,
      'telefoneFornecedorBuffet': telefoneFornecedorBuffet,
      'fornecedorBuffet': fornecedorBuffet,
      'nomeFornecedorCoquetel': nomeFornecedorCoquetel,
      'telefoneFornecedorCoquetel': telefoneFornecedorCoquetel,
      'fornecedorCoquetel': fornecedorCoquetel,
      'nomeFornecedorBoloFake': nomeFornecedorBoloFake,
      'telefoneFornecedorBoloFake': telefoneFornecedorBoloFake,
      'fornecedorBoloFake': fornecedorBoloFake,
      'nomeFornecedorBoloCorte': nomeFornecedorBoloCorte,
      'telefoneFornecedorBoloCorte': telefoneFornecedorBoloCorte,
      'fornecedorBoloCorte': fornecedorBoloCorte,
      'espatulaSelecionada': espatulaSelecionada,
      'tacasSelecionada': tacasSelecionada,
      'nomeFornecedorBebidas': nomeFornecedorBebidas,
      'telefoneFornecedorBebidas': telefoneFornecedorBebidas,
      'fornecedorBebidas': fornecedorBebidas,
      'nomeFornecedorChopp': nomeFornecedorChopp,
      'telefoneFornecedorChopp': telefoneFornecedorChopp,
      'fornecedorChopp': fornecedorChopp,
      'nomeFornecedorDJ': nomeFornecedorDJ,
      'telefoneFornecedorDJ': telefoneFornecedorDJ,
      'fornecedorDJ': fornecedorDJ,
      'nomeFornecedorBartender': nomeFornecedorBartender,
      'telefoneFornecedorBartander': telefoneFornecedorBartander,
      'fornecedorBartander': fornecedorBartander,
      'nomeFornecedorPista': nomeFornecedorPista,
      'telefoneFornecedorPista': telefoneFornecedorPista,
      'fornecedorPista': fornecedorPista,
      'entretenimentos': entretenimentos,
      'nomeFornecedorMaquiagem': nomeFornecedorMaquiagem,
      'telefoneFornecedorMaquiagem': telefoneFornecedorMaquiagem,
      'fornecedorMaquiagem': fornecedorMaquiagem,
      'nomeFornecedorPenteado': nomeFornecedorPenteado,
      'telefoneFornecedorPenteado': telefoneFornecedorPenteado,
      'fornecedorPenteado': fornecedorPenteado,
      'nomeFornecedorVestido': nomeFornecedorVestido,
      'telefoneFornecedorVestido': telefoneFornecedorVestido,
      'fornecedorVestido': fornecedorVestido,
      'nomeFornecedorPlaquinhas': nomeFornecedorPlaquinhas,
      'telefoneFornecedorPlaquinhas': telefoneFornecedorPlaquinhas,
      'fornecedorPlaquinhas': fornecedorPlaquinhas,
      'nomeFornecedorPortaAlianca': nomeFornecedorPortaAlianca,
      'telefoneFornecedorPortaAlianca': telefoneFornecedorPortaAlianca,
      'fornecedorPortaAlianca': fornecedorPortaAlianca,
      'nomeFornecedorCestaFlorista': nomeFornecedorCestaFlorista,
      'telefoneFornecedorCestaFlorista': telefoneFornecedorCestaFlorista,
      'fornecedorCestaFlorista': fornecedorCestaFlorista,
      'nomeFornecedorCarroNoiva': nomeFornecedorCarroNoiva,
      'telefoneFornecedorCarroNoiva': telefoneFornecedorCarroNoiva,
      'fornecedorCarroNoiva': fornecedorCarroNoiva,
      'nomeFornecedorCarroTrajeNoivo': nomeFornecedorTrajeNoivo,
      'telefoneFornecedorTrajeNoivo': telefoneFornecedorTrajeNoivo,
      'fornecedorTrajeNoivo': fornecedorTrajeNoivo,
    };
  }

  /*ChecklistCasamento.fromJson(Map<String, dynamic> json) {
    dataEvento = json['	dataEvento	'];
    localCerimonia = json['	localCerimonia	'];
    localRecepcao = json['	localRecepcao	'];
    horaInicioCerimonia = json['	horaInicioCerimonia	'];
    numeroDeConvidados = json['	numeroDeConvidados	'];
    quantidadeConvites = json['	quantidadeConvites	'];
    dataProvavelEntregaConvite = json['	dataProvavelEntregaConvite	'];
    dataProvavelConfirmacao = json['	dataProvavelConfirmacao	'];
    nomeFornecedorDecoracao = json['	nomeFornecedorDecoracao	'];
    telefoneFornecedorDecoracao = json['	telefoneFornecedorDecoracao	'];
    fornecedorDecoracao = json['	fornecedorDecoracao	'];
    nomeFornecedorLembrancinhas = json['	nomeFornecedorLembrancinhas	'];
    telefoneFornecedorLembrancinhas = json['	telefoneFornecedorLembrancinhas	'];
    fornecedorLembrancinhas = json['	fornecedorLembrancinhas	'];
    nomeFornecedorCabineDeFotos = json['	nomeFornecedorCabineDeFotos	'];
    telefoneFornecedorCabineDeFotos = json['	telefoneFornecedorCabineDeFotos	'];
    fornecedorCabineDeFotos = json['	fornecedorCabineDeFotos	'];
    nomeFornecedorFotografia = json['	nomeFornecedorFotografia	'];
    telefoneFornecedorFotografia = json['	telefoneFornecedorFotografia	'];
    fornecedorFotografia = json['	fornecedorFotografia	'];
    nomeFornecedorFilmagem = json['	nomeFornecedorFilmagem	'];
    telefoneFornecedorFilmagem = json['	telefoneFornecedorFilmagem	'];
    fornecedorFilmagem = json['	fornecedorFilmagem	'];
    nomeFornecedorDocesFinos = json['	nomeFornecedorDocesFinos	'];
    telefoneFornecedorDocesFinos = json['	telefoneFornecedorDocesFinos	'];
    fornecedorDocesFinos = json['	fornecedorDocesFinos	'];
    nomeFornecedorCascataDeChocolate =
        json['	nomeFornecedorCascataDeChocolate	'];
    telefoneFornecedorCascata = json['	telefoneFornecedorCascata	'];
    fornecedorCascata = json['	fornecedorCascata	'];
    nomeFornecedorAcai = json['	nomeFornecedorAcai	'];
    telefoneFornecedorAcai = json['	telefoneFornecedorAcai	'];
    fornecedorAcai = json['	fornecedorAcai	'];
    nomeFornecedorBuffet = json['	nomeFornecedorBuffet	'];
    telefoneFornecedorBuffet = json['	telefoneFornecedorBuffet	'];
    fornecedorBuffet = json['	fornecedorBuffet	'];
    nomeFornecedorCoquetel = json['	nomeFornecedorCoquetel	'];
    telefoneFornecedorCoquetel = json['	telefoneFornecedorCoquetel	'];
    fornecedorCoquetel = json['	fornecedorCoquetel	'];
    nomeFornecedorBoloFake = json['	nomeFornecedorBoloFake	'];
    telefoneFornecedorBoloFake = json['	telefoneFornecedorBoloFake	'];
    fornecedorBoloFake = json['	fornecedorBoloFake	'];
    nomeFornecedorBoloCorte = json['	nomeFornecedorBoloCorte	'];
    telefoneFornecedorBoloCorte = json['	telefoneFornecedorBoloCorte	'];
    fornecedorBoloCorte = json['	fornecedorBoloCorte	'];
    espatulaSelecionada = json['	espatulaSelecionada	'];
    tacasSelecionada = json['	tacasSelecionada	'];
    nomeFornecedorBebidas = json['	nomeFornecedorBebidas	'];
    telefoneFornecedorBebidas = json['	telefoneFornecedorBebidas	'];
    fornecedorBebidas = json['	fornecedorBebidas	'];
    nomeFornecedorChopp = json['	nomeFornecedorChopp	'];
    telefoneFornecedorChopp = json['	telefoneFornecedorChopp	'];
    fornecedorChopp = json['	fornecedorChopp	'];
    nomeFornecedorDJ = json['	nomeFornecedorDJ	'];
    telefoneFornecedorDJ = json['	telefoneFornecedorDJ	'];
    fornecedorDJ = json['	fornecedorDJ	'];
    nomeFornecedorBartender = json['	nomeFornecedorBartender	'];
    telefoneFornecedorBartander = json['	telefoneFornecedorBartander	'];
    fornecedorBartander = json['	fornecedorBartander	'];
    nomeFornecedorPista = json['	nomeFornecedorPista	'];
    telefoneFornecedorPista = json['	telefoneFornecedorPista	'];
    fornecedorPista = json['	fornecedorPista	'];
    entretenimentos = json['	entretenimentos	'];
    nomeFornecedorMaquiagem = json['	nomeFornecedorMaquiagem	'];
    telefoneFornecedorMaquiagem = json['	telefoneFornecedorMaquiagem	'];
    fornecedorMaquiagem = json['	fornecedorMaquiagem	'];
    nomeFornecedorPenteado = json['	nomeFornecedorPenteado	'];
    telefoneFornecedorPenteado = json['	telefoneFornecedorPenteado	'];
    fornecedorPenteado = json['	fornecedorPenteado	'];
    nomeFornecedorVestido = json['	nomeFornecedorVestido	'];
    telefoneFornecedorVestido = json['	telefoneFornecedorVestido	'];
    fornecedorVestido = json['	fornecedorVestido	'];
    nomeFornecedorPlaquinhas = json['	nomeFornecedorPlaquinhas	'];
    telefoneFornecedorPlaquinhas = json['	telefoneFornecedorPlaquinhas	'];
    fornecedorPlaquinhas = json['	fornecedorPlaquinhas	'];
    nomeFornecedorPortaAlianca = json['	nomeFornecedorPortaAlianca	'];
    telefoneFornecedorPortaAlianca = json['	telefoneFornecedorPortaAlianca	'];
    fornecedorPortaAlianca = json['	fornecedorPortaAlianca	'];
    nomeFornecedorCestaFlorista = json['	nomeFornecedorCestaFlorista	'];
    telefoneFornecedorCestaFlorista = json['	telefoneFornecedorCestaFlorista	'];
    fornecedorCestaFlorista = json['	fornecedorCestaFlorista	'];
    nomeFornecedorCarroNoiva = json['	nomeFornecedorCarroNoiva	'];
    telefoneFornecedorCarroNoiva = json['	telefoneFornecedorCarroNoiva	'];
    fornecedorCarroNoiva = json['	fornecedorCarroNoiva	'];
    nomeFornecedorTrajeNoivo = json['	nomeFornecedorTrajeNoivo	'];
    telefoneFornecedorTrajeNoivo = json['	telefoneFornecedorTrajeNoivo	'];
    fornecedorTrajeNoivo = json['	fornecedorTrajeNoivo	'];
  }*/
}
