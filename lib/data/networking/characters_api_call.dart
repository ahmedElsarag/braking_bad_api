import 'package:braking_bad_api/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersApiCall {
  late Dio dio;

  CharactersApiCall() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 2000,
      receiveTimeout: 2000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharactersApiCall() async{
   try{
     Response response = await dio.get('characters');
     print(response);
     return response.data;
   }catch(e){
     print(e.toString());
     return[];
   }
  }
}
