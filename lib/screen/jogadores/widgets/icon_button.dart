import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconButton extends StatelessWidget {
  IconButton(
      {super.key,
      required this.iconData,
      this.add,
      required this.color,
      required this.size});

  IconData iconData;
  VoidCallback? add;
  Color color;
  Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(color: Colors.transparent),
    );
  }
}
