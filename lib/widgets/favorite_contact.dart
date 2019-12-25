import 'package:flutter/material.dart';
import 'package:flutter_chat/model/message_model.dart';
import 'package:flutter_chat/utils/dashed_circle.dart';
import 'package:flutter_chat/views/chat_story_view.dart';

class FavoriteContact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 20.0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Text(
//                  "Favorite Contacts",
//                  style: TextStyle(
//                      color: Colors.blueGrey,
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.bold,
//                      letterSpacing: 1.0),
//                ),
//                Icon(
//                  Icons.more_horiz,
//                  size: 30.0,
//                  color: Colors.blueGrey,
//                )
//              ],
//            ),
//          ),
          Container(
            height: 130.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favirites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ChatStoryView(favirites[index].name, favirites[index].imageUrl, favirites[index].userStory)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          DashedCircle(
                            dashes: favirites[index].storyCount,
                            child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: AssetImage(favirites[index].imageUrl))),
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            favirites[index].name,
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
