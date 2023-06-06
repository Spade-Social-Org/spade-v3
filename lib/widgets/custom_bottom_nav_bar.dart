import 'dart:math';

import 'package:flutter/material.dart';

class CustomerNavigationBar extends StatefulWidget {
  const CustomerNavigationBar({
    Key? key,
    required this.selectedPageIndex,
    required this.onIconTap,
  }) : super(key: key);

  final int selectedPageIndex;
  final Function onIconTap;

  @override
  State<CustomerNavigationBar> createState() => _CustomerNavigationBarState();
}

class _CustomerNavigationBarState extends State<CustomerNavigationBar> {
  final double _iconSize = 30;
  bool _isSecondChildVisible = false;
  bool _isAnalogDragged = false;
  double _containerHeight = 0.0;


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        height: widget.selectedPageIndex == 2 ? 100 : 70,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.onIconTap(0);
                        setState(() {
                          _isSecondChildVisible = false;
                        });
                      },
                      iconSize: _iconSize,
                      icon: Image.asset(
                        widget.selectedPageIndex == 0
                            ? "assets/images/Path 748.png"
                            : "assets/images/Path 748 (1).png",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.onIconTap(1);
                        setState(() {
                          _isSecondChildVisible = false;
                        });
                      },
                      iconSize: _iconSize,
                      icon: Image.asset(
                        widget.selectedPageIndex == 1
                            ? "assets/images/Group 555 (2).png"
                            : "assets/images/Group 555.png",
                      ),
                    ),
                    GestureDetector(
                      onLongPress: () {
                        setState(() {
                          _isSecondChildVisible = true;
                        });
                      },
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            widget.onIconTap(2);
                            setState(() {
                              _isSecondChildVisible = false;
                            });
                          },
                          iconSize: _iconSize,
                          icon: Image.asset(
                            widget.selectedPageIndex == 2
                                ? "assets/images/Group 554 (1).png"
                                : "assets/images/Group 554.png",
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.onIconTap(3);
                        setState(() {
                          _isSecondChildVisible = false;
                        });
                      },
                      iconSize: _iconSize,
                      icon: Image.asset(
                        widget.selectedPageIndex == 3
                            ? "assets/images/global2.png"
                            : "assets/images/global.png",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.onIconTap(4);
                        setState(() {
                          _isSecondChildVisible = false;
                        });
                      },
                      iconSize: _iconSize,
                      icon: Image.asset(
                        widget.selectedPageIndex == 4
                            ? "assets/images/Group 648.png"
                            : "assets/images/Group 648.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_isSecondChildVisible)
              Positioned(
                left: 170,
                right: 170,
                bottom: -10,
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      height: 90,
                      width: 130,
                    ),
                    if (!_isAnalogDragged)
                      Positioned(
                        bottom: 25,
                        left: 50,
                        right: 50,
                        child: Draggable<bool>(
                          feedback: const Material(
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Color.fromARGB(255, 96, 96, 96),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ),
                          onDragStarted: () {
                            setState(() {
                              _isAnalogDragged = true;
                              _containerHeight =
                                  0.0; // Reset the container height
                            });
                          },
                          onDragEnd: (_) {
                            setState(() {
                              _isAnalogDragged = false;
                              _containerHeight =
                                  90.0; // Set the final container height
                            });
                          },
                          onDraggableCanceled: (_, __) {
                            setState(() {
                              _isAnalogDragged = false;
                              _containerHeight =
                                  90.0; // Set the final container height
                            });
                          },
                          child: const Positioned(
                            bottom: 25,
                            left: 50,
                            right: 50,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Color.fromARGB(255, 96, 96, 96),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Transform.rotate(
                        angle: -0.5,
                        child: AnimatedContainer(
                          height: 25,
                          width: 20,
                          color: Color.fromARGB(255, 14, 13, 13),
                          duration: const Duration(milliseconds: 200),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Transform.rotate(
                        angle: -0.5,
                        child: AnimatedContainer(
                          height: 25,
                          width: 20,
                          color: const Color.fromARGB(255, 248, 29, 14),
                          duration: const Duration(milliseconds: 200),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 38,
                      top: 2,
                      child: Transform.rotate(
                        angle: -0.2,
                        child: Container(
                          height: 25,
                          width: 20,
                          color: const Color.fromARGB(255, 1, 75, 18),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      child: Transform.rotate(
                        angle: 0.2,
                        child: Container(
                          height: 25,
                          width: 20,
                          color: const Color.fromARGB(255, 219, 204, 3),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 10,
                      child: Transform.rotate(
                        angle: 0.5,
                        child: Container(
                          height: 25,
                          width: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}


































// import 'dart:math';

// import 'package:flutter/material.dart';

// class CustomerNavigationBar extends StatefulWidget {
//   const CustomerNavigationBar({
//     Key? key,
//     required this.selectedPageIndex,
//     required this.onIconTap,
//   }) : super(key: key);

//   final int selectedPageIndex;
//   final Function onIconTap;

//   @override
//   State<CustomerNavigationBar> createState() => _CustomerNavigationBarState();
// }

// class _CustomerNavigationBarState extends State<CustomerNavigationBar> {
//   final double _iconSize = 30;
//   bool _isSecondChildVisible = false;
//   bool _isAnalogDragged = false;
//   double _containerHeight = 0.0;


//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       elevation: 0,
//       child: SizedBox(
//         height: widget.selectedPageIndex == 2 ? 100 : 70,
//         child: Stack(
//           children: [
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 height: 70,
//                 color: Colors.black,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         widget.onIconTap(0);
//                         setState(() {
//                           _isSecondChildVisible = false;
//                         });
//                       },
//                       iconSize: _iconSize,
//                       icon: Image.asset(
//                         widget.selectedPageIndex == 0
//                             ? "assets/images/Path 748.png"
//                             : "assets/images/Path 748 (1).png",
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         widget.onIconTap(1);
//                         setState(() {
//                           _isSecondChildVisible = false;
//                         });
//                       },
//                       iconSize: _iconSize,
//                       icon: Image.asset(
//                         widget.selectedPageIndex == 1
//                             ? "assets/images/Group 555 (2).png"
//                             : "assets/images/Group 555.png",
//                       ),
//                     ),
//                     GestureDetector(
//                       onLongPress: () {
//                         setState(() {
//                           _isSecondChildVisible = true;
//                         });
//                       },
//                       child: Center(
//                         child: IconButton(
//                           onPressed: () {
//                             widget.onIconTap(2);
//                             setState(() {
//                               _isSecondChildVisible = false;
//                             });
//                           },
//                           iconSize: _iconSize,
//                           icon: Image.asset(
//                             widget.selectedPageIndex == 2
//                                 ? "assets/images/Group 554 (1).png"
//                                 : "assets/images/Group 554.png",
//                           ),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         widget.onIconTap(3);
//                         setState(() {
//                           _isSecondChildVisible = false;
//                         });
//                       },
//                       iconSize: _iconSize,
//                       icon: Image.asset(
//                         widget.selectedPageIndex == 3
//                             ? "assets/images/global2.png"
//                             : "assets/images/global.png",
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         widget.onIconTap(4);
//                         setState(() {
//                           _isSecondChildVisible = false;
//                         });
//                       },
//                       iconSize: _iconSize,
//                       icon: Image.asset(
//                         widget.selectedPageIndex == 4
//                             ? "assets/images/Group 648.png"
//                             : "assets/images/Group 648.png",
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             if (_isSecondChildVisible)
//               Positioned(
//                 left: 170,
//                 right: 170,
//                 bottom: -10,
//                 child: Stack(
//                   children: [
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(30),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.grey.withOpacity(0.2),
//                       ),
//                       height: 90,
//                       width: 130,
//                     ),
//                     if (!_isAnalogDragged)
//                       Positioned(
//                         bottom: 25,
//                         left: 50,
//                         right: 50,
//                         child: Draggable<bool>(
//                           feedback: const Material(
//                             color: Colors.transparent,
//                             child: CircleAvatar(
//                               radius: 18,
//                               backgroundColor: Color.fromARGB(255, 96, 96, 96),
//                               child: CircleAvatar(
//                                 radius: 8,
//                                 backgroundColor: Colors.black,
//                               ),
//                             ),
//                           ),
//                           onDragStarted: () {
//                             setState(() {
//                               _isAnalogDragged = true;
//                               _containerHeight =
//                                   0.0; // Reset the container height
//                             });
//                           },
//                           onDragEnd: (_) {
//                             setState(() {
//                               _isAnalogDragged = false;
//                               _containerHeight =
//                                   90.0; // Set the final container height
//                             });
//                           },
//                           onDraggableCanceled: (_, __) {
//                             setState(() {
//                               _isAnalogDragged = false;
//                               _containerHeight =
//                                   90.0; // Set the final container height
//                             });
//                           },
//                           child: const Positioned(
//                             bottom: 25,
//                             left: 50,
//                             right: 50,
//                             child: CircleAvatar(
//                               radius: 18,
//                               backgroundColor: Color.fromARGB(255, 96, 96, 96),
//                               child: CircleAvatar(
//                                 radius: 8,
//                                 backgroundColor: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     Positioned(
//                       left: 10,
//                       top: 10,
//                       child: Transform.rotate(
//                         angle: -0.5,
//                         child: AnimatedContainer(
//                           height: 25,
//                           width: 20,
//                           color: Color.fromARGB(255, 14, 13, 13),
//                           duration: const Duration(milliseconds: 200),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 10,
//                       top: 10,
//                       child: Transform.rotate(
//                         angle: -0.5,
//                         child: AnimatedContainer(
//                           height: 25,
//                           width: 20,
//                           color: const Color.fromARGB(255, 248, 29, 14),
//                           duration: const Duration(milliseconds: 200),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 38,
//                       top: 2,
//                       child: Transform.rotate(
//                         angle: -0.2,
//                         child: Container(
//                           height: 25,
//                           width: 20,
//                           color: const Color.fromARGB(255, 1, 75, 18),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 70,
//                       child: Transform.rotate(
//                         angle: 0.2,
//                         child: Container(
//                           height: 25,
//                           width: 20,
//                           color: const Color.fromARGB(255, 219, 204, 3),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 100,
//                       top: 10,
//                       child: Transform.rotate(
//                         angle: 0.5,
//                         child: Container(
//                           height: 25,
//                           width: 20,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }



