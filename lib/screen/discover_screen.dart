import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';
import '../widgets/compatibility_widget.dart';

import '../widgets/match_widget.dart';

bool toggle = true;

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen>
    with SingleTickerProviderStateMixin {
  int currentCardIndex = 0;
  bool displayMatch = false;
  bool displayCompatibility = false;

  late AnimationController _controller;
  int expandedButtonIndex = -1;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 275),
    );

    _controller.addListener(() {
      setState(() {});
    });
  }

  Alignment alignment = const Alignment(00, 00);
  Alignment alignment1 = const Alignment(00, 00);
  Alignment alignment2 = const Alignment(00, 00);
  Alignment alignment3 = const Alignment(00, 00);
  Alignment alignment4 = const Alignment(00, 00);
  Alignment alignment5 = const Alignment(00, 00);

  double size1 = 50;
  double size2 = 50;
  double size3 = 50;
  double size4 = 50;
  double size5 = 50;

  void expandedButton(int index) {
    setState(() {
      if (expandedButtonIndex == index) {
        expandedButtonIndex = -1;
      } else {
        expandedButtonIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          StackedListCarousel<AwesomeInAppBanner>(
            items: banners,
            behavior: CarouselBehavior.consume,
            cardBuilder: (context, item, size) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(item.imgUrl), fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              item.age,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(9),
                            color: Colors.white38,
                            child: Text(
                              item.country,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },

            outermostCardHeightFactor: 0.6,
            itemGapHeightFactor: 0.04,
            maxDisplayedItemCount: 2,
            animationDuration: const Duration(milliseconds: 550),
            autoSlideDuration: const Duration(seconds: 8),
            alignment: StackedListAxisAlignment.bottom,
            emptyBuilder: (context) => const Center(
              child: Text('Spade'),
            ),
            innerCardsWrapper: (child) {
              return Stack(
                children: [
                  child,
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ],
              );
            },
            // You can also customize outermost card builder for some special effects.
            outermostCardWrapper: (child) {
              return DecoratedBox(
                decoration: const BoxDecoration(),
                child: child,
              );
            },
            cardSwipedCallback: (item, direction) {
              final index = banners.indexOf(item);
              debugPrint('card swiped: ${item.name}, $direction');
              if (index <= 0 && index < banners.length) {
                setState(() {
                  banners.removeAt(index);
                });
              }
            },
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Center(
              child: Visibility(
                visible: displayMatch,
                child: const MatchWidget(),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Center(
              child: Visibility(
                visible: displayCompatibility,
                child: const CompatibilityWidget(),
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            left: 100,
            right: 100,
            child: SizedBox(
              height: 270,
              width: 300,
              child: Stack(
                children: [
                  AnimatedAlign(
                    duration: toggle
                        ? const Duration(milliseconds: 100)
                        : const Duration(milliseconds: 875),
                    alignment: alignment1,
                    curve: toggle ? Curves.easeIn : Curves.elasticInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: toggle ? Curves.easeIn : Curves.easeIn,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: GestureDetector(
                            onTap: () {
                              expandedButton(1);
                              setState(() {
                                displayCompatibility = !displayCompatibility;
                              });
                            },
                            child: Container(
                              height: expandedButtonIndex == 1 ? 60 : 50,
                              width: expandedButtonIndex == 1 ? 60 : 50,
                              color: banners[currentCardIndex].color,
                              child: Image.asset("assets/images/temp.png"),
                            ),
                          )),
                    ),
                  ),
                  AnimatedAlign(
                    duration: toggle
                        ? const Duration(milliseconds: 100)
                        : const Duration(milliseconds: 875),
                    alignment: alignment2,
                    curve: toggle ? Curves.easeIn : Curves.elasticInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: toggle ? Curves.easeIn : Curves.easeIn,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: GestureDetector(
                            onTap: () {
                              expandedButton(2);
                            },
                            child: Container(
                              height: expandedButtonIndex == 2 ? 60 : 50,
                              width: expandedButtonIndex == 2 ? 60 : 50,
                              color: Colors.grey,
                              child: Image.asset("assets/images/Vector.png"),
                            ),
                          )),
                    ),
                  ),
                  AnimatedAlign(
                    duration: toggle
                        ? const Duration(milliseconds: 100)
                        : const Duration(milliseconds: 875),
                    alignment: alignment3,
                    curve: toggle ? Curves.easeIn : Curves.elasticInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: toggle ? Curves.easeIn : Curves.easeIn,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: GestureDetector(
                          onTap: () {
                            expandedButton(3);
                          },
                          child: Container(
                            height: expandedButtonIndex == 3 ? 60 : 50,
                            width: expandedButtonIndex == 3 ? 60 : 50,
                            color: Colors.red,
                            child: Image.asset("assets/images/heart.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedAlign(
                    duration: toggle
                        ? const Duration(milliseconds: 100)
                        : const Duration(milliseconds: 875),
                    alignment: alignment4,
                    curve: toggle ? Curves.easeIn : Curves.elasticInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: toggle ? Curves.easeIn : Curves.easeIn,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: GestureDetector(
                            onTap: () {
                              expandedButton(4);
                              setState(() {
                                displayMatch = !displayMatch;
                              });
                            },
                            child: Container(
                              height: expandedButtonIndex == 4 ? 60 : 50,
                              width: expandedButtonIndex == 4 ? 60 : 50,
                              color: banners[currentCardIndex].color,
                              child: Image.asset(
                                "assets/images/red nd yell.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          )),
                    ),
                  ),
                  AnimatedAlign(
                    duration: toggle
                        ? const Duration(milliseconds: 100)
                        : const Duration(milliseconds: 875),
                    alignment: alignment5,
                    curve: toggle ? Curves.easeIn : Curves.elasticInOut,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: toggle ? Curves.easeIn : Curves.easeIn,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: GestureDetector(
                            onTap: () {
                              expandedButton(5);
                            },
                            child: Container(
                              height: expandedButtonIndex == 5 ? 60 : 50,
                              width: expandedButtonIndex == 5 ? 60 : 50,
                              color: banners[currentCardIndex].color,
                              child: Image.asset("assets/images/3cards.png"),
                            ),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (toggle) {
                            toggle = !toggle;
                            _controller.forward();
                            Future.delayed(const Duration(milliseconds: 10),
                                () {
                              alignment1 = const Alignment(-0.4, -0.5);
                            });
                            Future.delayed(const Duration(milliseconds: 10),
                                () {
                              alignment2 = const Alignment(-0.7, 0.0);
                            });
                            Future.delayed(const Duration(milliseconds: 10),
                                () {
                              alignment3 = const Alignment(0.7, 0.0);
                            });
                            Future.delayed(const Duration(milliseconds: 10),
                                () {
                              alignment4 = const Alignment(0.5, -0.5);
                            });
                            Future.delayed(const Duration(milliseconds: 10),
                                () {
                              alignment5 = const Alignment(0.0, 0.6);
                            });
                          } else {
                            toggle = !toggle;
                            _controller.reverse();
                            alignment1 = const Alignment(00, 00);
                            alignment2 = const Alignment(00, 00);
                            alignment3 = const Alignment(00, 00);
                            alignment4 = const Alignment(00, 00);
                            alignment5 = const Alignment(00, 00);
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: toggle ? 80 : 60,
                        width: toggle ? 80 : 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: CircularPercentIndicator(
                          radius: toggle ? 30.0 : 25,
                          lineWidth: 5.0,
                          percent: 0.6,
                          center: Text(
                            "${banners[currentCardIndex].percentage}%",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          progressColor: banners[currentCardIndex].color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AwesomeInAppBanner {
  final String imgUrl;
  final String name;
  final String country;
  final String age;
  final Color color;
  final int percentage;

  const AwesomeInAppBanner(
    this.imgUrl,
    this.color,
    this.name,
    this.country,
    this.age,
    this.percentage,
  );
}

List<AwesomeInAppBanner> banners = <AwesomeInAppBanner>[
  const AwesomeInAppBanner(
    'assets/images/Rectangle 1595.png',
    Color.fromARGB(255, 11, 85, 13),
    'Nadia',
    'Cameroon',
    '27',
    60,
  ),
  const AwesomeInAppBanner(
    'assets/images/Rectangle 1597.png',
    Color.fromARGB(255, 148, 17, 8),
    'Maria',
    'Nigeria',
    '25',
    75,
  ),
  const AwesomeInAppBanner(
    'assets/images/Rectangle 1598.png',
    Color.fromARGB(255, 204, 167, 1),
    'Sarah',
    'Ghana',
    '29',
    80,
  ),
  const AwesomeInAppBanner(
    'assets/images/Rectangle 1597.png',
    Color.fromARGB(255, 37, 140, 42),
    'Maria',
    'Nigeria',
    '25',
    85,
  ),
  const AwesomeInAppBanner(
    'assets/images/Rectangle 1597.png',
    Color.fromARGB(255, 37, 140, 42),
    'Maria',
    'Nigeria',
    '25',
    85,
  ),
];
