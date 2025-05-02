import 'package:first_supbase/model/user_model.dart';
import 'package:flutter/cupertino.dart';

import '../services/auth_service.dart';

class AuthenticationProvider extends ChangeNotifier{
    UserModel? user;

    Future<void>AddUser({required String email, required String password}) async{
      user = await AuthenticationService.SignUp(email: email, password: password);
      notifyListeners();
    }

    Future<void>LogUser({required String email, required String password}) async{
      user = await AuthenticationService.SignIn(email: email, password: password);
      notifyListeners();
    }

}