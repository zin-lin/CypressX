import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  final Size size;
  final Widget child;
  const TemplatePage({super.key, required this.size, required this.child });

  @override
  Widget build(BuildContext context) {
    Size screenSize = size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: const BoxDecoration(
          image:  DecorationImage(image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover
          )
      ),
      child: child ,);
  }
}
