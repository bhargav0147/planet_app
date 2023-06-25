import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet_app/controller/planet_controller.dart';
import 'package:slider_button/slider_button.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen>
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
    int i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff37325b),
            bottomNavigationBar: SliderButton(
                backgroundColor: Colors.white54,
                alignLabel: Alignment.center,
                action: () {
                  Get.back();
                },
                height: 60,
                width: 375,
                label: Text(
                  "Slide to Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 18),
                ),
                icon: Icon(
                  Icons.close,
                  size: 25,
                )),
            body: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
              children: [
                  SizedBox(height: 20),
                  Container(
                    height: 520,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xff4a4675),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 10)
                        ]),
                    child: Align(
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedBuilder(
                                builder: (context, child) {
                                  return Transform.rotate(
                                    angle: animationController!.value * 1 * pi,
                                    child: child,
                                  );
                                },
                                animation: animationController!,
                                child: Image.asset(
                                  "${controller.planetInfo[i].image}",
                                  height: 200,
                                  width: 200,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "${controller.planetInfo[i].planetName}",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white30,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 3,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Planet Type",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${controller.planetInfo[i].planetType}",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Distance from Sun in Km",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${controller.planetInfo[i].distanceFromSun} Km",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "On Way Light time to The Sun",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${controller.planetInfo[i].lightTieToSun} Minutes",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Length of Year",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white30,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${controller.planetInfo[i].lenghtYear}",
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "OVERVIEW",
                      style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${controller.planetInfo[i].data}",
                      style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white54,
                      ),
                    ),
                  ),
              ],
            ),
                ))));
  }
}
