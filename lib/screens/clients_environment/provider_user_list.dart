import 'package:flutter/foundation.dart';
import 'package:practice_pro/screens/clients_environment/user_model.dart';
import 'package:practice_pro/screens/repository/user_repository.dart';

class ProviderUserList with ChangeNotifier{
  
  List<UserJson> _users = [];

  List<UserJson> get users => _users;

  final UserRepository _userRepository = UserRepository();
  
  Future<void> getUser() async{
    _users = await _userRepository.getUser();
    notifyListeners();
  }
  
}