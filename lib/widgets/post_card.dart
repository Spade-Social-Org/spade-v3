import 'package:flutter/material.dart';
import 'package:spade/screen/sub_screen/chat_screen.dart';

import '../models/post.dart';

class PostCard extends StatelessWidget {
   PostCard({super.key, required this.post});
  final Post post;

  List<String> images = [
    "assets/images/pexels-mwabonje-1820919 1.png",
     "assets/images/Screen Shot 2022-04-21 at 10.41.11 AM.png",
     "assets/images/Screen Shot 2022-04-21 at 10.41.11 AM.png",
     "assets/images/Screen Shot 2022-04-21 at 10.41.48 AM.png",
     "assets/images/Screen Shot 2022-04-21 at 10.41.11 AM.png",
     "assets/images/Screen Shot 2022-04-21 at 10.41.11 AM.png",
     "assets/images/Image 40.png",
  ];
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.amber
                ),
                borderRadius: BorderRadius.circular(50),
                 color: Colors.grey,
              ),
              height: 50,width: 50,
             
            ),
            dense: true,
            title: Text(
              post.postedby.username,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              post.location,
              style:const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 15),
            ),
            trailing: const Icon(Icons.more_vert),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: Image.asset(
                  post.imageurl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  color: post.isLiked ? Colors.red : Colors.black,
                    onPressed: () {},
                    icon: Icon(post.isLiked
                        ? Icons.favorite_outlined
                        : Icons.favorite_border_outlined)),
                const SizedBox(
                  width: 8,
                ),
                Image.asset("assets/images/Path 740.png"),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      post.isBookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border_outlined,
                      color: post.isLiked ? Colors.grey : Colors.black,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              
              post.caption,
              style: const TextStyle(fontSize: 18,color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              post.postedTimeAgo,
              style: const TextStyle(fontSize: 15,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
