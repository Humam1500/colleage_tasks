import 'package:flutter/material.dart';


class Customcontainer extends StatelessWidget {
  const Customcontainer({super.key, this.child, required this.size, required this.CirularRate, });
  final Widget? child;
  final double size;
  final double CirularRate;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        gradient: RadialGradient(
         colors: [Colors.blue, Colors.purple,Colors.indigo],
        ),
        borderRadius: BorderRadius.circular(CirularRate),
      ),
      child: Center(child: child),
    );
  }
}