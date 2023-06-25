import 'package:get/get.dart';
import 'package:planet_app/model/planet_model.dart';

class PlanetController extends GetxController {
  RxList<PlanetModel> planetInfo = <PlanetModel>[
    PlanetModel(
        data: "From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as 11 times brighter.",
        distanceFromSun: "29,118,430",
        lenghtYear: "88 Earth Day",
        lightTieToSun: 2.60,
        planetName: "Mercury",
        planetType: "Terrestrial",
        image: "assets/images/Mercury.png"),
    PlanetModel(
        data: "Similar in structure and size to Earth, Venus's thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system.",
        distanceFromSun: "67,375,160",
        lenghtYear: "225 Earth Day",
        lightTieToSun: 6.02,
        planetName: "Venus",
        planetType: "Terrestrial",
        image: "assets/images/Venus.png"),
    PlanetModel(
        data: "Earth—our home planet—is the only place we know of so far that’s inhabited by living things. It's also the only planet in our solar system with liquid water on the surface.",
        distanceFromSun: "94,475,069",
        lenghtYear: "365 Earth Day",
        lightTieToSun: 8.45,
        planetName: "Earth",
        planetType: "Terrestrial",
        image: "assets/images/Earth.png"),
    PlanetModel(
        data: "Mars is a dusty, cold, desert world with a very thin atmosphere. There is strong evidence Mars was – billions of years ago – wetter and warmer, with a thicker atmosphere.",
        distanceFromSun: "154,600,040",
        lenghtYear: "687 Earth Day",
        lightTieToSun: 13.83,
        planetName: "Mars",
        planetType: "Terrestrial",
        image: "assets/images/Mars.png"),
    PlanetModel(
        data: "Jupiter is more than twice as massive than the other planets of our solar system combined. The giant planet's Great Red Spot is a centuries-old storm bigger than Earth.",
        distanceFromSun: "460,865,419",
        lenghtYear: "4,333 Earth Day",
        lightTieToSun: 41.23,
        planetName: "Jupiter",
        planetType: "Gas Giant",
        image: "assets/images/Jupiter.png"),
    PlanetModel(
        data: "Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. The other giant planets have rings, but none are as spectacular as Saturn's.",
        distanceFromSun: "910,086,405",
        lenghtYear: "10,759 Earth Day",
        lightTieToSun: 81.42,
        planetName: "Saturn",
        planetType: "Gas Giant",
        image: "assets/images/Saturn.png"),
    PlanetModel(
        data: "Uranus—seventh planet from the Sun—rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.",
        distanceFromSun: "1,896,848,550",
        lenghtYear: "30,687 Earth Day",
        lightTieToSun: 163.36,
        planetName: "Uranus",
        planetType: "Ice Giant",
        image: "assets/images/Uranus.png"),
    PlanetModel(
        data: "Neptune—the eighth and most distant major planet orbiting our Sun—is dark, cold and whipped by supersonic winds. It was the first planet located through mathematical calculations.",
        distanceFromSun: "2,780,165,220",
        lenghtYear: "60,190 Earth Day",
        lightTieToSun: 248.74,
        planetName: "Neptune",
        planetType: "Ice Giant",
        image: "assets/images/Neptune.png")
  ].obs;
}
