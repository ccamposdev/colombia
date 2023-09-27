
import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais.dart';



import 'package:paquetes/classes/request_responds.dart';

void getReqRespServ(){

  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final resReqResp = reqResRespuestaFromJson(res.body);

    // print(res);

    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per page: ${body['per_page']}');
    // print('Id del tercer elemento: ${body['data'][2]['id']}');

    print('page: ${resReqResp.page}');
    print('per page: ${resReqResp.perPage}');
    print('Id del tercer elemento: ${resReqResp.data[2].id}');
  });


}
void getPais(){

  final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');
  http.get(url).then((res) {

    final Colombia = paisFromJson(res.body);
    final a = 10;


  }).catchError((error) => print);


}