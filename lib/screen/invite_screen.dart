import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:spade/screen/friends.dart';
import 'package:spade/screen/map_screen.dart';
import 'package:spade/screen/set_date_screen.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
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
              initialChildSize: 0.6, // Initial size of the dialog
              minChildSize: 0.1, // Minimum size of the dialog
              maxChildSize: 0.6, // Maximum size of the dialog
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
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Twisted Bugger co",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            // scrollDirection: Axis.horizontal,
                            controller: ScrollController(),
                            itemCount: 15,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 80),
                        child: MaterialButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> const SetDateScreen()));
                          },
                          child: const Text(
                            "Invite",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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
