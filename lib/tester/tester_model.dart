
abstract class Model
{
  String?  userId;
  String?  id;

  Model(this.userId, this.id);


}


class PostModel
{

  int ?  userId;
  int?  id;
  String?  title;
  String?  body;

  PostModel(this.userId,this.id,this.title, this.body) ;

  PostModel.fromJson(Map<String,dynamic> data)
  {
    id=data["id"];
    userId=data["userId"];
    title=data["title"];
    body=data["body"];


  }

}