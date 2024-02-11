import 'package:flutter/material.dart';

BoxShadow shadow (Color color){
return  BoxShadow( color: Color(color.value),
                                  spreadRadius: 3, 
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), 
                                  );
}