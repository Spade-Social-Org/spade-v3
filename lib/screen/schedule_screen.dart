import 'package:flutter/material.dart';
import 'package:spade/screen/invite_screen.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  int selectedItemIndex = -1;

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
                          children: const [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "Twisted Root Burger co",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: scheduleNotice.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedItemIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0, bottom: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                         color: Colors.white30,
                                        border: Border.all(
                                          width: 3,
                                          color: selectedItemIndex == index ? Colors.white : Colors.transparent
                                        )
                                      ),
                                        height: 40,
                                        width: double.infinity,
                                       
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(children: [
                                            Text(
                                              scheduleTime[index],
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(width: 40),
                                            Text(
                                              scheduleNotice[index],
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            )
                                          ]),
                                        )),
                                  ),
                                ),
                              ),
                            );
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 80,bottom: 20),
                        child: MaterialButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: selectedItemIndex != -1 ? Colors.white : Colors.white30,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const InviteScreen()));
                          },
                          child:  Text(
                            "Next",
                            style: TextStyle(
                                color: selectedItemIndex != -1 ? Colors.black : Colors.white,
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

final List<String> scheduleNotice = [
  "Available",
  "Available",
  "Available",
  "Unavailable",
  "Unavailable",
  "Available",
 
  "Unavailable",
  
];

final List<String> scheduleTime = [
  "12:00 PM",
  "10:30 AM",
  "12:00 PM",
  "9:30 Am",
  "12:00 PM",
  "1:00 PM",
 
  "9:30 Am",
];
