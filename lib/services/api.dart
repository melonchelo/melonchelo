import 'package:dio/dio.dart';
class RequesApi {
  final String route;
  RequesApi(this.route);

Future<dynamic> get()async{
var tomar = await Dio().get(route);
return tomar;
}
}
