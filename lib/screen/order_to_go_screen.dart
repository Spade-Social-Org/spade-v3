import 'package:flutter/material.dart';
import 'package:spade/screen/map_screen.dart';
import 'package:spade/screen/schedule_screen.dart';

import '../widgets/restaurant_widget.dart';

class OrderToGoScreen extends StatelessWidget {
  const OrderToGoScreen({super.key});

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
                            CircleAvatar(
                              radius: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: SearchField(),
                              height: 50,
                              width: 350,
                            )
                            // SearchField()
                          ],
                        ),
                      ),
                   
                     
                       Restaurants(),
                        Restaurants(),
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
