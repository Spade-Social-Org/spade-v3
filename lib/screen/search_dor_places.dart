import 'package:flutter/material.dart';

//import 'package:google_maps_flutter/google_maps_flutter.dart';

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

class SearchForPlaceScreen extends StatefulWidget {
  const SearchForPlaceScreen({Key? key}) : super(key: key);

  @override
  State<SearchForPlaceScreen> createState() => _SearchForPlaceScreenState();
}

class _SearchForPlaceScreenState extends State<SearchForPlaceScreen> {
//  static const double _defaultlat = 8.85577417427599;
//  static const double _defaultlng = 38.81151398296511;

//  static  CameraPosition _defaultlocation =
//      CameraPosition(target: LatLng(_defaultlat, _defaultlng), zoom: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // GoogleMap(initialCameraPosition: _defaultlocation,
          // mapType: MapType.satellite,),

           Image.asset(
            "assets/images/map2.jfif",
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder: (context, controller) => Container(
                    color: Colors.black,
                    child: ListView(
                      controller: controller,
                      children: [
                        Container(
                          color: Colors.black,
                          child: Builder(builder: (context) {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: const SearchField(),
                                      ),
                                      SizedBox(
                                        height: 70,
                                        child: SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/images/Rectangle 1595.png"),
                                                radius: 30,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Container(
                                                  width: 400,
                                                  height: 60,
                                                  color: Colors.white30,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              image: const DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/images/Vector (2).png")),
                                                              color: Colors
                                                                  .white38,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2)),
                                                          height: 30,
                                                          width: 70,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white54,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2)),
                                                          height: 30,
                                                          width: 70,
                                                          child: const Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                      
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          child: Icon(Icons.calendar_month_outlined,color: Colors.white,),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white54,
                                                              
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2)),
                                                          height: 30,
                                                          width: 70,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white54,
                                                              image: const DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/images/Vector (5).png")),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2)),
                                                          height: 30,
                                                          width: 70,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 150,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: ((context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        25,
                                                      ),
                                                      child: Container(
                                                        child: Image.asset(
                                                          images[index],
                                                          fit: BoxFit.fill,
                                                        ),
                                                        height: 100,
                                                        width: 100,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      title[index],
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    )
                                                  ],
                                                ),
                                              );
                                            })),
                                      )
                                    ],
                                  ))
                                ],
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),),
        ],
      ),
    );
  }
}

class people extends StatelessWidget {
  final String name;
  final String image;
  const people({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
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
