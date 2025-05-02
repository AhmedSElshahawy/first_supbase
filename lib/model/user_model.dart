class AppUser {
  final String id;
  final String email;

  AppUser({required this.id, required this.email});

  factory AppUser.fromJson(String id,String email){
    return AppUser(id: id, email: email);
  }
}