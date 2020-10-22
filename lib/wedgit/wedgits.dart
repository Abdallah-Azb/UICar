import 'package:carproject/wedgit/carditem.dart';
import 'package:flutter/material.dart';

class WedgitsAppCars {
  Widget CarType(heightScreen, text1) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: heightScreen * 0.2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  text1.toString(),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SymptomCard(
                      image: "images/car2.jpg",
                      title: "Wagon",
                      //  isActive: true,
                    ),
                    SymptomCard(
                      image: "images/car3.jpg",
                      title: "SUV",
                    ),
                    SymptomCard(
                        image: "images/car3.jpg",
                        title: "Sedan",
                        isActive: true),
                    SymptomCard(
                      image: "images/car5.jpg",
                      title: "Hatchback",
                    ),
                    SymptomCard(
                      image: "images/car6.jpg",
                      title: "Senna",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CarMarcet(heightScreen, textAll, text2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Container(
        height: heightScreen * 0.17,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAll.toString(),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      text2.toString(),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        padding: EdgeInsets.all(0.5),
                        height: heightScreen * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                        child: Image.asset(
                          "icons/icon1.jpeg",
                        ),
                      ),
                    ),
                    costomContanier(heightScreen, "icons/icon2.jpeg"),
                    costomContanier(heightScreen, "icons/icon1.jpeg"),
                    costomContanier(heightScreen, "icons/ivon3.jpeg"),
                    costomContanier(heightScreen, "icons/icon2.jpeg"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget costomContanier(heightScreen, image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.all(0.5),
        height: heightScreen * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
