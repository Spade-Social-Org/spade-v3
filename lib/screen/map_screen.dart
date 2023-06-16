import 'package:flutter/material.dart';
import 'package:spade/screen/friends.dart';
import 'package:spade/screen/global_screen.dart';
import 'calender_screen.dart';
import 'order_to_go_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _isBottomSheetVisible = false;

  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetVisible = !_isBottomSheetVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/map2.jfif",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GlobaSearchScreen()));
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 40,
                child: Icon(Icons.home_work_outlined),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Friends()));
              },
              child: const CircleAvatar(
                child: Icon(Icons.group_add),
                backgroundColor: Colors.black,
                radius: 40,
              ),
            ),
          ),
        ],
      ),
      // bottomSheet: _isBottomSheetVisible ? _buildBottomSheet() : null,
    );
  }

  // Widget _buildBottomSheet() {
  //   return SizedBox(
  //     height: 350,
  //     child: ClipRRect(
  //       borderRadius: const BorderRadius.only(
  //           topLeft: Radius.circular(30), topRight: Radius.circular(30)),
  //       child: Container(
  //         color: Colors.black,
  //         child: ListView(
  //           children: [
  //             Builder(builder: (context) {
  //               return SingleChildScrollView(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     SizedBox(
  //                         child: ListView(
  //                       shrinkWrap: true,
  //                       children: [
  //                          Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: SearchField(),
  //                         ),
  //                         SizedBox(
  //                           height: 70,
  //                           child: SizedBox(
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceEvenly,
  //                               children: [
  //                                 const CircleAvatar(
  //                                   backgroundImage: AssetImage(
  //                                       "assets/images/Rectangle 1595.png"),
  //                                   radius: 30,
  //                                 ),
  //                                 ClipRRect(
  //                                   borderRadius: BorderRadius.circular(20),
  //                                   child: Container(
  //                                     width: 400,
  //                                     height: 60,
  //                                     color: Colors.white30,
  //                                     child: Row(
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment.center,
  //                                       children: [
  //                                         Padding(
  //                                           padding:
  //                                               const EdgeInsets.all(5.0),
  //                                           child: Container(
  //                                             decoration: BoxDecoration(
  //                                                 image: const DecorationImage(
  //                                                     image: AssetImage(
  //                                                         "assets/images/Vector (2).png")),
  //                                                 color: Colors.white38,
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(
  //                                                         40),
  //                                                 border: Border.all(
  //                                                     color: Colors.white,
  //                                                     width: 2)),
  //                                             height: 30,
  //                                             width: 70,
  //                                           ),
  //                                         ),
  //                                         Padding(
  //                                           padding:
  //                                               const EdgeInsets.all(5.0),
  //                                           child: GestureDetector(
  //                                             onTap: (){
  //                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeOrderScreen()));
  //                                             },
  //                                             child: Container(
  //                                               decoration: BoxDecoration(
  //                                                   color: Colors.white54,
  //                                                   borderRadius:
  //                                                       BorderRadius.circular(
  //                                                           40),
  //                                                   border: Border.all(
  //                                                       color: Colors.white,
  //                                                       width: 2)),
  //                                               height: 30,
  //                                               width: 70,
  //                                               child: const Icon(
  //                                                 Icons.favorite_border,
  //                                                 color: Colors.white,
  //                                               ),
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         Padding(
  //                                           padding:
  //                                               const EdgeInsets.all(5.0),
  //                                           child: GestureDetector(
  //                                             onTap: (){
  //                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderScreen()));
  //                                             },
  //                                             child: Container(
  //                                               decoration: BoxDecoration(
  //                                                   color: Colors.white54,
  //                                                   borderRadius:
  //                                                       BorderRadius.circular(
  //                                                           40),
  //                                                   border: Border.all(
  //                                                       color: Colors.white,
  //                                                       width: 2)),
  //                                               height: 30,
  //                                               width: 70,
  //                                               child: const Icon(
  //                                                 Icons.calendar_month_outlined,
  //                                                 color: Colors.white,
  //                                               ),
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         Padding(
  //                                           padding:
  //                                               const EdgeInsets.all(5.0),
  //                                           child: Container(
  //                                             decoration: BoxDecoration(
  //                                                 color: Colors.white54,
  //                                                 image: const DecorationImage(
  //                                                     image: AssetImage(
  //                                                         "assets/images/Vector (5).png")),
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(
  //                                                         40),
  //                                                 border: Border.all(
  //                                                     color: Colors.white,
  //                                                     width: 2)),
  //                                             height: 30,
  //                                             width: 70,
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 )
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: 150,
  //                           child: ListView.builder(
  //                               scrollDirection: Axis.horizontal,
  //                               itemCount: 4,
  //                               itemBuilder: ((context, index) {
  //                                 return Padding(
  //                                   padding: const EdgeInsets.all(8.0),
  //                                   child: Column(
  //                                     children: [
  //                                       ClipRRect(
  //                                         borderRadius: BorderRadius.circular(
  //                                           25,
  //                                         ),
  //                                         child: Container(
  //                                           child: Image.asset(
  //                                             images[index],
  //                                             fit: BoxFit.fill,
  //                                           ),
  //                                           height: 100,
  //                                           width: 100,
  //                                           color: Colors.grey,
  //                                         ),
  //                                       ),
  //                                       const SizedBox(
  //                                         height: 5,
  //                                       ),
  //                                       Text(
  //                                         title[index],
  //                                         style: const TextStyle(
  //                                             color: Colors.white,
  //                                             fontWeight: FontWeight.bold,
  //                                             fontSize: 16),
  //                                       )
  //                                     ],
  //                                   ),
  //                                 );
  //                               })),
  //                         )
  //                       ],
  //                     ))
  //                   ],
  //                 ),
  //               );
  //             })
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}



class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: GestureDetector(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(30)),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for places",
                hintStyle: TextStyle(color: Colors.white60, fontSize: 20),
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.white60),
          ),
        ),
      ),
    );
  }
}

