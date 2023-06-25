import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet_app/controller/planet_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  PlanetController controller = Get.put(PlanetController());
  AnimationController? animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationController!.repeat(reverse: false);
    animationController!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff37325b),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "treva",
          style: TextStyle(
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.search_sharp,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(width: 10)
        ],
        leading: Icon(
          Icons.menu,
          size: 25,
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.shade900,
            Colors.blueAccent,
            Colors.lightBlueAccent
          ])),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => showList(index),
        itemCount: controller.planetInfo.length,
      ),
    ));
  }

  Widget showList(int index) {
    return Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            Get.toNamed("info",arguments: index);
          },
          child: Container(
            height: 140,
            width: 310,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: Color(0xff3f3b73),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, blurRadius: 10, spreadRadius: 1)
                ]),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(-3, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedBuilder(
                        animation: animationController!,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: animationController!.value * 2 * pi,
                            child: child,
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "${controller.planetInfo[index].image}"),
                          radius: 55,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${controller.planetInfo[index].planetName}",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Milkyway Galaxy",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white30,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 3,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${controller.planetInfo[index].planetType}",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
