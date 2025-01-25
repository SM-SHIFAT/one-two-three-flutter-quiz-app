import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const List<String> item = [
    "Easy",
    "Medium",
    "Hard",
    "time limit",
    "Double Trouble",
    "Endless",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Menu Page'),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(50), // Rounded corners for the Card
              ),
              child: Container(
                width: size.width * .7,
                height: size.width * .14,
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color for the container
                  borderRadius: BorderRadius.circular(
                      50), // Rounded corners for the Container
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 55),
                    Text(
                      "Let's Play",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Choose a category to start playing",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Expanded(
              child: LayoutBuilder(builder: (context, constrains) {
                if (constrains.maxWidth < 414) {
                  return Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.red,
                              child: LayoutBuilder(builder: (context, cons) {
                                final length =
                                    min(cons.maxHeight, cons.maxWidth);
                                return Center(
                                  child: Container(
                                    height: length,
                                    width: length,
                                    margin: const EdgeInsets.all(10),
                                    // color: Colors.blue,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Card(
                                            shape: SuperellipseShape(
                                              borderRadius:
                                                 BorderRadius.circular(28.0),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                        //  top: -10,
                                          // left: 0,
                                          // right: 0,
                                          child: SvgPicture.asset(
                                            "assets/icons/math.svg",
                                            semanticsLabel: 'icon',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            )),
                            Expanded(
                                child: Container(
                              color: Colors.green,
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.yellow,
                            )),
                            Expanded(child: Container(color: Colors.blue)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.red,
                            )),
                            Expanded(child: Container(color: Colors.green)),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              }),

              // GridView.builder(
              //   // Suggested code may be subject to a license. Learn more: ~LicenseLog:3326103951.
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //   ),
              //   padding: const EdgeInsets.symmetric(horizontal: 10),

              //   itemCount: item.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Container(
              //       color: Colors.grey,
              //       child: Center(
              //         child: Text(item[index]),
              //       ),
              //     );
              //   },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
