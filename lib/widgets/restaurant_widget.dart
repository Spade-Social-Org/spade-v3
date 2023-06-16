import 'package:flutter/material.dart';
import 'package:spade/screen/order_now_screen.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                    color: Colors.white30,
                    child: Row(
                      children: const [
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    color: Colors.white30,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.directions_walk_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Resgaurants",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
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
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                    color: Colors.white30,
                    child: Row(
                      children: const [
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
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "Twisted Root Burger Co",
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Burger double",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Along 16miles",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderNowScreen()));
              },
              color: Colors.white,
              child: const Text("Order to go"),
            ),
            const Spacer(),
            const Icon(
              Icons.send,
              color: Colors.white,
            ),
            const Spacer(),
            const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.white,
              ),
            ),
          ],
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
      ],
    );
  }
}
