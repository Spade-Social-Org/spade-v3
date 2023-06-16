import 'package:flutter/material.dart';

import '../mock_data/mock.dart';
import '../widgets/add_story_card.dart';
import '../widgets/custom_home_appbar.dart';
import '../widgets/post_card.dart';
import '../widgets/story_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          const CustomHomeAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: stories.length + 1,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: index == 0
                              ? const AddStoryCard()
                              : StoryCard(
                                  story: stories[index - 1],
                                ),
                        );
                      }),
                ),
              ],
            ),
          ),
          SliverList(
            
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return  PostCard(post: posts[index],);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
