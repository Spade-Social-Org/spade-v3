import 'package:flutter/material.dart';
import 'package:spade/screen/order_to_go_screen.dart';
import 'package:spade/screen/map_screen.dart';
import 'package:spade/screen/order_now_screen.dart';

class OpenNowScreen extends StatelessWidget {
  const OpenNowScreen({super.key});

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
                      Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Image.asset("asses/images/Image 40.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Twisted Root Burger Co",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Burger juice 50.00",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Open Now",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "3.6 reviews",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Carotunes fee",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        
                        padding: const EdgeInsets.all(20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: double.infinity,
                            color: Colors.white24,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              const Icon(
                                Icons.alarm,
                                color: Colors.white,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Open Now",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 16),
                                  ),
                                  Text(
                                    "8:00 Am  - 7:00 Pm",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.white,
                                onPressed: () {
                                  //this route takes you to the  order now screen
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const OrderToGoScreen()));
                                },
                                child: const Text(
                                  "Order to Go",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                ),
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.white,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month,color: Colors.white,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_outlined,color: Colors.white,)),
                            ]),
                          ),
                        ),
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
