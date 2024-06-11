import 'dart:io';

import 'package:imcproject/models/pessoa_models.dart';
import 'package:imcproject/service/imcCalculadora_service.dart';

void main(List<String> arguments) {
  print('Calculadora de IMC');

  print('Para prosseguir informe seu nome');
  String? nome = stdin.readLineSync().toString();
  if (nome == null || nome.isEmpty) {
    print('valor invalido');
    return;
  }

  print('Informe sua altura (em metros, por exemplo, 1.75)');
  String? alturaInput = stdin.readLineSync();
  double? altura = double.tryParse(alturaInput ?? '');
  if ( altura == 0.0 || altura == null || altura > 2.40) {
    print('valor invalido');
    return;
  }

  print('Informe seu peso');
  String? pesoInput = stdin.readLineSync();
  double? peso = double.tryParse(pesoInput ?? '');
  if (peso == 0.0 || peso == null || peso > 150) {
    print('valor invalido');
    return;
  }

  Pessoa pessoa = Pessoa(altura: altura, nome: nome, peso: peso);

  

  String finalResult = calcimc(pessoa);

  print('${finalResult}');
}
