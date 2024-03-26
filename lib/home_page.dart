import 'package:flutter/material.dart';
import 'package:cypress/home.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    // Container
    return  SafeArea(child:   SizedBox(
      width: width,
      height: height,
      child:  Column(
        children: [
          SizedBox(
            width: width,
            height: height ,
            child: const SingleChildScrollView(child:  Home()),
          ),


        ],
      ) ,
    ));
  }
}