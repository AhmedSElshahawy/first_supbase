class UserModel {
  final String id;
  final String email;

  UserModel({required this.id, required this.email});

  factory UserModel.fromSupa(String id,String email){
    return UserModel(id: id, email: email);
  }
}