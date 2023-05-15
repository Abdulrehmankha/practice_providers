import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice_pro/screens/clients_environment/user_model.dart';

class UserRepository{


  Future<List<UserJson>> getUser() async{
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    return list.map((e) => UserJson.fromJson(e)).toList();
  }


}