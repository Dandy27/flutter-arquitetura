import 'package:arquitetura/app/interfaces/client_http_interface.dart';
import 'package:dio/dio.dart';

class ClientHttpService implements ClientHttpInterface {
  final Dio dio = Dio();

  @override
  void addToken(String token) {}

  @override
  Future<Map<String, dynamic>> get(String url) async {
    await dio.get(url);
    var response = await dio.get(url);
    return response.data;
  }
}
