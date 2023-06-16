import 'package:flutter/material.dart';
import 'package:spade/models/story.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.story});
  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 32,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            backgroundImage: NetworkImage(
                "assets/images/Screen Shot 2022-04-21 at 10.41.11 AM.png"),
          ),
        ),
        const Spacer(),
        Text(
          story.postby.username,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
