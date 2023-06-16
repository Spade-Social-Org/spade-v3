import 'package:flutter/material.dart';
import 'package:spade/screen/calender_screen.dart';
import 'package:spade/screen/open_now_screen.dart';

import 'order_to_go_screen.dart';
import 'map_screen.dart';
import 'order_now_screen.dart';

//so the first screen is the open now screen
//the goto order screen,
//the order now screen
//there will be a drop container at the oder now screen

class GlobaSearchScreen extends StatelessWidget {
  const GlobaSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/map2.jfif",
              fit: BoxFit.cover,
            ),
          ),
          GestureDetector(
            // Close the dialog when tapping outside the content
            onTap: () {
              Navigator.of(context).pop();
            },
            child: DraggableScrollableSheet(
              initialChildSize: 0.4, // Initial size of the dialog
              minChildSize: 0.1, // Minimum size of the dialog
              maxChildSize: 0.4, // Maximum size of the dialog
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      const SearchField(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 50,
                                width: 400,
                                color: Colors.white30,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const OpenNowScreen()));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          height: 30,
                                          width: 60,
                                          child: Image.asset(
                                              "assets/images/Vector (2).png"),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            color: Colors.white38,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        height: 30,
                                        width: 60,
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CalenderScreen()));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          height: 30,
                                          width: 60,
                                          child: const Icon(
                                            Icons.calendar_month_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            color: Colors.white38,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        height: 30,
                                        width: 60,
                                        child: const Icon(
                                          Icons.bookmark_border_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        color: Colors.white,
                                        height: 90,
                                        width: 100,
                                        child: Image.asset(
                                          images[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      title[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<dynamic> images = [
  "assets/images/Rectangle 3382.png",
  "assets/images/Rectangle 3381.png",
  "assets/images/Rectangle 3383.png",
  "assets/images/Rectangle 3384.png"
];

List<String> title = [
  "Food and drinks",
  "Movies",
  "Activities",
  "Hotel",
];

