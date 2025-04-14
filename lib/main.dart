import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gradieatncolorgobr/directions.dart';

void main(
  List<String> args,
) {
  runApp(
    MaterialApp(
      home:
          directionsgobrrrrr(),
    ),
  );
}

class directionsgobrrrrr
    extends
        StatefulWidget {
  const directionsgobrrrrr({
    super.key,
  });
  @override
  State<
    StatefulWidget
  >
  createState() {
    return _directiongo();
  }
}

class _directiongo
    extends
        State<
          directionsgobrrrrr
        > {
  Alignment
  directb =
      Alignment
          .centerLeft;
  Alignment
  directe =
      Alignment
          .centerRight;
  String
  cdirection =
      'Vertical';
  int rand = 0;
  int color1 = 0;
  int color2 = 0;
  int color3 = 0;
  int color4 = 0;
  final mapdirections = {
    'Vertical': [
      Alignment
          .centerLeft,
      Alignment
          .centerRight,
    ],
    'Horizontal': [
      Alignment
          .bottomCenter,
      Alignment
          .topCenter,
    ],
    'right-left': [
      Alignment
          .bottomLeft,
      Alignment
          .topRight,
    ],
    'left-right': [
      Alignment
          .bottomRight,
      Alignment
          .topLeft,
    ],
  };
  void colorset() {
    setState(() {
      color1 =
          Random()
              .nextInt(
                250,
              ) +
          6;
      color2 =
          Random()
              .nextInt(
                250,
              ) +
          6;
      color3 =
          Random()
              .nextInt(
                250,
              ) +
          6;
      color4 =
          Random()
              .nextInt(
                250,
              ) +
          6;
    });
  }

  void
  setdirection() {
    setState(() {
      rand =
          (rand +
              1) %
          directions
              .length;
      cdirection =
          directions[rand];

      var filldirection =
          mapdirections[cdirection];

      if (filldirection !=
          null) {
        directb =
            filldirection[0];
        directe =
            filldirection[1];
      }
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:
                directb,
            end:
                directe,
            colors: [
              Color.fromARGB(
                color1,
                color2,
                color3,
                color4,
              ),
              Color.fromARGB(
                255,
                255,
                255,
                255,
              ),
              Color.fromARGB(
                color1,
                color2,
                color3,
                color4,
              ),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              OutlinedButton(
                onPressed:
                    setdirection,
                style: OutlinedButton.styleFrom(
                  foregroundColor:
                      Colors.white,
                ),
                child: Text(
                  cdirection,
                  style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      219,
                      164,
                      164,
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed:
                    colorset,
                style: OutlinedButton.styleFrom(
                  foregroundColor:
                      Colors.white,
                ),
                child: Text(
                  'change color',
                  style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      217,
                      147,
                      226,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
