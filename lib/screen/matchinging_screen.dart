import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/discovery_tool.dart';
import '../widgets/discoverytool3.dart';



class Discovery2 extends StatelessWidget {
  const Discovery2({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,


          leading: const CircleAvatar(
            backgroundImage: AssetImage('asset/images/Rectangle 1595.png',
            ),
          ),
          centerTitle: true,
          title: const Text('Discovery',style: TextStyle(color:Colors.black),),
          actions:[
            IconButton(onPressed: (){},
                icon: const Icon(Icons.notifications,color: Colors.black45,)),
            IconButton(onPressed: (){},
              icon: const Icon(Icons.more_vert,color: Colors.black45,),
            ),
          ]
      ),
      


      body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
                height: 550,
                width: 500,


                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top:10,
                      bottom: 30,
                      left: 80,
                      child: Discoverytool(
                        name: "",
                        country: '',
                        age: 2,
                        image: 'asset/images/Rectangle 1595.png',
                      ),
                    ),
                    Positioned(
                      top:30,
                      bottom: 20,
                      left: 70,
                      child: Discoverytool(
                        image: "asset/images/Rectangle 1597.png",
                        name: "maria",
                        age: 17,
                        country: "Nigerial",
                      ),
                    ),
                    Positioned(
                      top: 50,
                      bottom: 10,
                      left: 60,
                      child: Discoverytool3(),
                    ),
                  ],


                )),
            const SizedBox(height: 20,),




          ]),
    );
  }
}
