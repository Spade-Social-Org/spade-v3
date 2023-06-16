import 'package:flutter/material.dart';
import 'package:spade/screen/search_dor_places.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  int selectedContainerIndex = -1;
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
              initialChildSize: 0.8, // Initial size of the dialog
              minChildSize: 0.1, // Minimum size of the dialog
              maxChildSize: 0.8, // Maximum size of the dialog
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
                      SearchField(),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 900,
                        child: GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            // scrollDirection: Axis.horizontal,
                            controller: ScrollController(),
                            itemCount: friend.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedContainerIndex = index;
                                  });
                                },
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: friend[index].color,
                                                  width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      friend[index].images),
                                                  fit: BoxFit.cover)),
                                          height: 100,
                                          width: 100,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black38,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          height: 100,
                                          width: 100,
                                        ),
                                         if(selectedContainerIndex != index)
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius: BorderRadius.circular(40)
                                          ),
                                          height: 100,
                                          width: 100,
                                        ),
                                      ],
                                    )),
                              );
                            }),
                      ),
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

class Friend {
  final String images;
  final Color color;

  const Friend(this.images, this.color);
}

List<Friend> friend = [
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 372.png", Colors.green),
  const Friend("assets/images/Ellipse 366.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.yellow),
  const Friend("assets/images/Ellipse 368.png", Colors.yellow),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.grey),
  const Friend("assets/images/Ellipse 377.png", Colors.green),
  const Friend("assets/images/Ellipse 372 (1).png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.grey),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 377.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 368.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
];
