import 'package:flutter/material.dart';
import 'package:spade/mock_data/mock.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 33,
              backgroundImage: AssetImage(currentUser.profileImageUrl),
            ),
            Positioned(
              bottom: 0,
              left: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15)),
                  height: 25,
                  width: 25,
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      iconSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        const Text(
          "Your story",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
