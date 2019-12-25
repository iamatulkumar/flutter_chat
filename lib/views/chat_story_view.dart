import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_chat/model/user_model.dart';
import 'package:flutter_chat/widgets/story_view.dart';

class ChatStoryView extends StatefulWidget {
  final String name;
  final String imageUrl;
  final List<UserStory> userStory;

  ChatStoryView(this.name, this.imageUrl, this.userStory);

  @override
  _ChatStoryViewState createState() => _ChatStoryViewState();
}

class _ChatStoryViewState extends State<ChatStoryView> {
  final storyController = StoryController();
  List<StoryItem> storyItem = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < widget.userStory.length; i++) {
      if (widget.userStory[i].type == storyType.image) {
        storyItem.add(
          StoryItem.pageImage(
            AssetImage(widget.imageUrl),
          ),
        );
      } else if (i == 0) {
        storyItem.add(StoryItem.text(
          "hey Hi, I am " + widget.name,
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ));
      } else {
        storyItem.add(StoryItem.text(
          "Nice!\n\nTap to continue.",
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ));
      }
    }
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItem,
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
          Navigator.pop(context);
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}
