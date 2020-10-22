import 'package:flutter/material.dart';

class WedgitViewCar {
  String text_start = "تبدا من";

  Widget CarImage(heightScreen, textAll, text3, widthScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Container(
        height: heightScreen * 0.4,
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
                      text3.toString(),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: <Widget>[
                      costomimage(
                        widthScreen,
                        heightScreen,
                        "Audi",
                        "images/car1.jpg",
                        126356,
                      ),
                      costomimage(widthScreen, heightScreen, "marcids",
                          "images/car55.jpg", 62236),
                      costomimage(widthScreen, heightScreen, "Audi",
                          "images/car1.jpg", 32155),
                      costomimage(widthScreen, heightScreen, "marcids",
                          "images/car55.jpg", 9822),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget costomimage(
    widthScreen,
    heightScreen,
    name,
    image,
    price,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: widthScreen * 0.56,
        height: heightScreen * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          double localheight = constraints.maxHeight;
          double localwidth = constraints.maxWidth;
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(0.5),
                height: localheight * 0.85,
                width: localwidth,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:   Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: localheight * 0.15,
                  //   color: Colors.white,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(" \n${price} "),
                          ),
                          Text(text_start),
                        ],
                      ),
                      Text(name, style: TextStyle(fontSize: 25)),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class WedgitViewCarVedio {
  Widget VedioCar(heightScreen, textAll, text3, widthScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Container(
        height: heightScreen * 0.4,
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
                      text3.toString(),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: <Widget>[
                      costomimage2(
                          widthScreen, heightScreen, "images/car1.jpg"),
                      costomimage2(
                          widthScreen, heightScreen, "images/car55.jpg"),
                      costomimage2(
                          widthScreen, heightScreen, "images/car1.jpg"),
                      costomimage2(
                          widthScreen, heightScreen, "images/car55.jpg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget costomimage2(
    widthScreen,
    heightScreen,
    image,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
        width: widthScreen * 0.56,
        height: heightScreen * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
      ),
    );
  }
}
