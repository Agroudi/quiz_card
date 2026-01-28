import 'package:flutter/material.dart';

Widget buildBottomButton(IconData icon) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.purple[800],
      borderRadius: BorderRadius.circular(12),
    ),
    child: IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () {},
    ),
  );
}
