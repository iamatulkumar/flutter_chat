import 'package:flutter_chat/model/user_model.dart';
import 'package:flutter_chat/widgets/story_view.dart';

class Message {

  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});

}

final UserStory textStory = new UserStory(type: storyType.text, text: "random", url: "");
final UserStory imageStory = new UserStory(type: storyType.image, text: "random", url: "");
final UserStory gifStory = new UserStory(type: storyType.gif, text: "random", url: "");
final UserStory normalTextStory = new UserStory(type: storyType.video, text: "random", url: "");

final User natasha = User(
    id: 0, name: 'Natasha', imageUrl: 'graphics/natasha.jpg', storyCount: 2, userStory:[textStory, imageStory]);
final User peter_parker = User(
    id: 1, name: 'Peter parker', imageUrl: 'graphics/peter_parker.jpg', storyCount: 5, userStory:[textStory, imageStory, textStory, textStory, textStory]);
final User thanos = User(id: 2, name: 'Thanos', imageUrl: 'graphics/thanos.jpg', storyCount: 3, userStory:[textStory, imageStory, textStory]);
final User thor = User(id: 3, name: 'Thor', imageUrl: 'graphics/thor.jpg', storyCount: 6, userStory:[textStory, imageStory, textStory, textStory, textStory, textStory]);
final User tchala = User(id: 4, name: 'T\`chala', imageUrl: 'graphics/tchalla.jpg', storyCount: 4, userStory:[textStory, imageStory, textStory, textStory]);
final User tony_stark = User(
    id: 5, name: 'Tony stark', imageUrl: 'graphics/tony_stark.jpg', storyCount: 4, userStory:[textStory, imageStory, textStory, textStory, textStory]);
final User steve_rogers = User(
    id: 6, name: 'Steve rogers', imageUrl: 'graphics/steve_rogers.jpg', storyCount: 5, userStory:[textStory, imageStory, textStory, textStory, textStory]);
final User clint_barton = User(
    id: 7, name: 'Clint barton', imageUrl: 'graphics/clint_barton.jpg', storyCount: 2,userStory:[textStory, imageStory]);
final User carol_danvers = User(
    id: 8, name: 'Carol danvers', imageUrl: 'graphics/carol_danvers.jpg', storyCount: 2, userStory:[textStory, imageStory]);
final User bruce_banner = User(
    id: 9, name: 'Bruce banner', imageUrl: 'graphics/bruce_banner.jpg', storyCount: 2, userStory:[textStory, imageStory]);

List<User> favirites = [tony_stark, natasha, steve_rogers, thor, clint_barton];

List<Message> chats = [
  Message(sender: natasha,
      time: '12:30 PM',
      text: 'hey, I am Natasha .. !  "Black Widow"',
      isLiked: false,
      unread: false),
  Message(sender: peter_parker,
      time: '12:30 PM',
      text: 'hey, I am Peter parker .. !',
      isLiked: true,
      unread: true),
  Message(sender: thanos,
      time: '3:00 PM',
      text: 'hey, I am Thanos God.. ! ',
      isLiked: false,
      unread: false),
  Message(sender: thor,
      time: '3:33 PM',
      text: 'hey, I am Thor .. !',
      isLiked: true,
      unread: true),
  Message(sender: tchala,
      time: '5:25 PM',
      text: 'hey, I am T\`chala .. !',
      isLiked: false,
      unread: true),
  Message(sender: tony_stark,
      time: '6:53 PM',
      text: 'hey, I am Tony stark .. !',
      isLiked: true,
      unread: false),
  Message(sender: steve_rogers,
      time: '6:58 PM',
      text: 'hey, I am Natasha .. !',
      isLiked: false,
      unread: false),
  Message(sender: clint_barton,
      time: '7:22 PM',
      text: 'hey, I am Clint barton .. !',
      isLiked: true,
      unread: true),
  Message(sender: carol_danvers,
      time: '8:28 PM',
      text: 'hey, I am Carol danvers .. !',
      isLiked: false,
      unread: false),
  Message(sender: bruce_banner,
      time: '9:36 PM',
      text: 'hey, I am Bruce banner .. !',
      isLiked: true,
      unread: false),
];
