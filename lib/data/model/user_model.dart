
class UserModel {
   String? id;
   String? name;
   String? userName;
   String? userKey;
   String? email;
   String? password;
   String? phone;

  UserModel(this.id, this.name, this.userName, this.email, this.password, this.phone,this.userKey);

  UserModel.login(String email,String eassword){
    this.email=email;
    this.password=eassword;

  }
}