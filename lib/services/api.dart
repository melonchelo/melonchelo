import 'package:dio/dio.dart';

class RequesApi {
  final String route;
  RequesApi({required this.route});

  Future<dynamic> get() async {
    Dio dio = Dio();
    dio.options.headers['Authorization'] =
        'Basic c29wb3J0ZXVzdWFyaW9zOkZFdWhSc2lPQThpU2doNWhXODVOQ3RYYw==';
    dio.options.headers['Cookie'] =
        'PHPSESSID=6ae36c119cace0da6124971a308cf0e8';

    Response<dynamic> response = await dio.get(route);

    return response.data;
  }

  Future<dynamic> tomar() async {
    Dio dio = Dio();
    dio.options.headers['Authorization'] =
        'Basic c29wb3J0ZXVzdWFyaW9zOmhMcUt2Nm1RTmRLZk1VUGxKaXJ5Z0RYSg==';
    dio.options.headers['Cookie'] =
        'PHPSESSID=e77210c37b41c08064b11ee0ee13b569';

    Response<dynamic> response = await dio.get(route);

    return response.data;
  }
}
