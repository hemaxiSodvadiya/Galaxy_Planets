import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/model.dart';
import '../screen/detail_page.dart';

class PlanetRow extends StatefulWidget {
  @override
  State<PlanetRow> createState() => _PlanetRowState();
}

class _PlanetRowState extends State<PlanetRow>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    );
    Timer(Duration(milliseconds: 1), () {
      animationController.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
        child: ListView.builder(
          itemBuilder: (context, i) {
            // var Page = planets[i];
            return Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('page', arguments: planet[i]);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => PageD(Page)));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 135,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 46.0, bottom: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFF333366),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                planet[i].name,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                planet[i].location,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w100),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.blue,
                                height: 3,
                                width: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img/ic_gravity.png',
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    planet[i].gravity,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Image.asset(
                                    'assets/img/ic_distance.png',
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    planet[i].distance,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    RotationTransition(
                      turns: animationController,
                      alignment: Alignment.center,
                      child: Hero(
                        tag: 'data',
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          // alignment: FractionalOffset.centerLeft,
                          child: Image(
                            image: AssetImage(planet[i].image),
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: planet.length,
        ));
  }
}
