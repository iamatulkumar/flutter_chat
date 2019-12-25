
enum storyType {
  text,
  image,
  gif,
  video
}
class User{

  final int id;
  final String name;
  final String imageUrl;
  final int storyCount;
  final List<UserStory> userStory;

  User({this.id, this.name, this.imageUrl, this.storyCount, this.userStory});

}

class UserStory{

  final storyType type;
  final String text;
  final String url;

  UserStory({this.type, this.text, this.url});


}