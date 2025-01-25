import 'package:flutter/material.dart';

import '../widget/menu_item_button.dart';

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
        backgroundColor: Color.fromARGB(255, 86, 107, 244),
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
                            MenuButton(
                              assetsImagePath: "assets/icons/b.svg",
                              labelText: item[0],
                            ),
                            MenuButton(
                              assetsImagePath: "assets/icons/a.svg",
                              labelText: item[1],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            MenuButton(
                              assetsImagePath: "assets/icons/c.svg",
                              labelText: item[2],
                            ),
                            MenuButton(
                              assetsImagePath: "assets/icons/c.svg",
                              labelText: item[3],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            MenuButton(
                              assetsImagePath: "assets/icons/c.svg",
                              labelText: item[4],
                            ),
                            MenuButton(
                              assetsImagePath: "assets/icons/c.svg",
                              labelText: item[5],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
