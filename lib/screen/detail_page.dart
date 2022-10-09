import 'dart:async';

import 'package:flutter/material.dart';

import '../model/model.dart';

class PageD extends StatefulWidget {
  const PageD({Key? key}) : super(key: key);

  @override
  State<PageD> createState() => _PageDState();
}

class _PageDState extends State<PageD> with SingleTickerProviderStateMixin {
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
    final arg = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      backgroundColor: Color(0xFF333366),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: 70,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  arg.name,
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  arg.location,
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white60,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/img/ic_gravity.png',
                                      scale: 1.5,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      arg.gravity,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white38,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Image.asset(
                                      'assets/img/ic_distance.png',
                                      scale: 1.5,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      arg.distance,
                                      style: TextStyle(
                                          fontSize: 18,
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
                            margin: EdgeInsets.symmetric(vertical: 0),
                            alignment: FractionalOffset.center,
                            child: GestureDetector(
                              onTap: () {
                                print("+++");
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 500,
                                        color: Color(0xFF333366),
                                        //   decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 90,
                                              width: double.infinity,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12),
                                                  bottomRight:
                                                      Radius.circular(12),
                                                ),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xff3383fc),
                                                    Color(0xff00c6ff),
                                                  ],
                                                ),
                                              ),
                                              child: Text(
                                                "Welcome to ${arg.name}",
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Image.asset(
                                              arg.image,
                                              height: 150,
                                              width: 150,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Distance to Sun",
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 18),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              arg.distance,
                                              style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Distance to Earth",
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 18),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              arg.gravity,
                                              style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Image(
                                image: AssetImage(arg.image),
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "OVERVIEW",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    arg.description,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white38,
                      wordSpacing: 2,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF298bf8),
                    Color(0xFF00c0fc),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Colors.white,
                  ),
                  Text(
                    "BACK",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
