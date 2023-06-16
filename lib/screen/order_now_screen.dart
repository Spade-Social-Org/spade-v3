import 'package:flutter/material.dart';
import 'package:spade/screen/calender_screen.dart';

class OrderNowScreen extends StatefulWidget {
  const OrderNowScreen({super.key});

  @override
  State<OrderNowScreen> createState() => _OrderNowScreenState();
}

class _OrderNowScreenState extends State<OrderNowScreen> {
  bool showContainer = false;
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
              initialChildSize: 0.9, // Initial size of the dialog
              minChildSize: 0.1, // Minimum size of the dialog
              maxChildSize: 0.9, // Maximum size of the dialog
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      const Divider(
                        endIndent: 150,
                        indent: 150,
                        thickness: 10,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Twisted Root burgger",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                                color: Colors.white30,
                                child: Row(
                                  children:const [
                                     Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Favorite",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                             ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                                color: Colors.white30,
                                child: Row(
                                  children:const [
                                     Icon(
                                Icons.directions_walk_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Coffee",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                                  ],
                                ),
                              ),
                            ),
                            // const Icon(
                            //   Icons.directions_walk_outlined,
                            //   color: Colors.white,
                            // ),
                            // const SizedBox(
                            //   width: 5,
                            // ),
                            // const Text(
                            //   "Coffee",
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 18,
                            //   ),
                            // ),
                            const Spacer(),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  color: Colors.white,
                                  child: const Icon(Icons.send),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderScreen()));

                              },
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    color: Colors.white,
                                    child: const Icon(
                                      Icons.calendar_month_outlined,
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey),
                                ),
                              );
                            }),
                      ),




                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              showContainer = !showContainer;
                            });
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 50,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "Order Now",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Visibility(
                        visible: showContainer = showContainer,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white
                                  ),
                                  color: Colors.white30
                                ),
                                height: 40,width: 110),
                                Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white
                                  ),
                                  color: Colors.white30
                                ),
                                height: 40,width: 110),
                                Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white
                                  ),
                                  color: Colors.white30
                                ),
                                height: 40,width: 110),
                                Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white
                                  ),
                                  color: Colors.white30
                                ),
                                height: 40,width: 110),
                            ],
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white30,
                            height: 300,
                            child: Column(
                              children: const [
                                ListTile(
                                  leading: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "Address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Location of the restaurant",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "Address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  subtitle: Text(
                                    "Location of the restaurant",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.wifi_protected_setup_outlined,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "Visit website",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Location of the restaurant",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.flag,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "Report an issue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ) ///////
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
