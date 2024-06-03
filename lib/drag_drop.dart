import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DragDrop extends StatefulWidget {
  const DragDrop({super.key});

  @override
  State<DragDrop> createState() => _DragDropState();
}

class _DragDropState extends State<DragDrop> {

  double _width = 150;
  double _height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: _height,
                  width: _width,
                  color: Colors.blue,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onPanUpdate: (details) => setState(() {
                            log("==>dy${details.delta.dy}");
                            log("==>dx${details.delta.dx}");


                              _height += details.delta.dy;
                              _width += details.delta.dx;

                          }),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.5, color: Colors.red),
                                right: BorderSide(width: 1.5, color: Colors.red),
                              ),
                            ),
                            // color: Colors.red,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1.5, color: Colors.red),
                              right: BorderSide(width: 1.5, color: Colors.red),
                            ),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.5, color: Colors.red),
                              left: BorderSide(width: 1.5, color: Colors.red),
                            ),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1.5, color: Colors.red),
                              left: BorderSide(width: 1.5, color: Colors.red),
                            ),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Height:$_height"),
                Text("Width:$_width"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

