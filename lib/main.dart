import 'package:carproject/wedgit/carditem.dart';
import 'package:carproject/wedgit/wedgits.dart';
import 'package:carproject/wedgit/wedgittow.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'helper/change_color.dart';

void main() {
  //runApp(DevicePreview(builder: (context) => MyApp(),));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ProvedClass(),
    )
  ], child: MaterialApp(home: HomePage())));
}

/* // this class to used the Device Preview
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: HomePage()
    );
  }
}
*/
class HomePage extends StatelessWidget {
  String text1 = " تصفح حسب نوع السيارة ";
  String text2 = "تصفح حسب نوع الماركة";
  String text3 = "جديد الوكالات";
  String textAll = "الكل";
  String text_vedio = "فيديو";
  String text_start = "تبدا من";

  // var card = SymptomCard();
  var W = WedgitsAppCars();
  var W2 = WedgitViewCar();
  var W3 = WedgitViewCarVedio();
  var p = ProvedClass();

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider<ProvedClass>(
      create: (context) => ProvedClass(),
      child: Scaffold(
        backgroundColor: Color(0xF4F4F4ff),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.5, vertical: 0.25),
          child: ListView(
            children: [
              //                        **** The Image and Tow Icon******
              Container(
                height: heightScreen * 0.3,
                child: Stack(
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double localHeight = constraints.maxHeight;

                        return SizedBox(
                          height: localHeight,
                          child: Image.asset(
                            "images/car1.jpg",
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  height: 21,
                                  left: 10,
                                  top: 0,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[800],
                                    radius: 20,
                                    child: Text(
                                      "12",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            width: 40,
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //                     ***** this تصفح حسب السيارة *******

              W.CarType(heightScreen, text1),
              //                    ***** this تصفح حسب نوع الماركه *****

              W.CarMarcet(heightScreen, textAll, text2),
              //              **** this جديد الوكالات ******

              W2.CarImage(heightScreen, textAll, text3, widthScreen),
              //                **** thos الفيديو *****

              W3.VedioCar(heightScreen, textAll, text3, widthScreen),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          fixedColor: Colors.black,
          backgroundColor: Colors.blueAccent[400],
          currentIndex: Provider.of<ProvedClass>(context).indexBar,
          onTap: (value) {
            Provider.of<ProvedClass>(context, listen: false).onclick(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "الوكالات"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "التثمين"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "الخدمات"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "التامين")
          ],
        ),
      ),
    );
  }
}
