import 'package:imcproject/models/pessoa_models.dart';
import 'package:imcproject/service/imcCalculadora_service.dart';
import 'package:test/test.dart';

void main(){
test('calcauleate', (){
Pessoa pessoa = Pessoa(altura: 1.65, nome: 'teste', peso: 85.0);
  expect(calcimc(pessoa),'Obesidade Grau I');
});

test('calcauleate2', (){
Pessoa pessoa = Pessoa(altura: 1.65, nome: 'teste', peso: 65.5);
  expect(calcimc(pessoa),'Saudável');
});

}