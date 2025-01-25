import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.assetsImagePath,
    required this.labelText,
  });

  final String assetsImagePath;
  final String labelText;
  static const double bottomTextHeight = 45.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        child: LayoutBuilder(builder: (context, cons) {
          final length = min(cons.maxHeight, cons.maxWidth);
          // print(length / 5);
          return Center(
            child: Container(
              height: length,
              width: length,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              // color: Colors.blue,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    child: Card(
                      elevation: 6,
                      shape: SuperellipseShape(
                        borderRadius: BorderRadius.circular(length / 5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 0,
                    right: 0,
                    bottom: bottomTextHeight,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        //  color: Colors.green,
                        child: SvgPicture.asset(
                          assetsImagePath,
                          semanticsLabel: 'icon',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: bottomTextHeight,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      //  color: Colors.amber,
                      child: FittedBox(
                        child: Text(
                          labelText,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
