import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/user_model.dart';

class AuthenticationService{
  static final supaObject = Supabase.instance.client;

  static Future<UserModel> SignUp({required String email, required String password})async{

    final response = await supaObject.auth.signUp(email: email,password: password);
    final userId = response.user?.id;

    if(userId!=null){
      return UserModel.fromSupa(userId, email);
    }
    else{
      throw Exception("Error in sign up");
    }
  }

  static Future<UserModel> SignIn({required String email, required String password})async{

    final response = await supaObject.auth.signInWithPassword(email: email,password: password);
    final userId = response.user?.id;

    if(userId!=null){
      return UserModel.fromSupa(userId, email);
    }
    else{
      throw Exception("Error in sign up");
    }
  }
}