import 'package:flutter/material.dart';

const directions = [
  'Vertical',
  'Horizontal',
  'right-left',
  'left-right',
];
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
