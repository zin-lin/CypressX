import 'package:flutter/material.dart';

const primary = Color(0Xff071322);

BoxShadow shadow (Color color){
return  BoxShadow( color: Color(color.value),
                                  spreadRadius: 3, 
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), 
                                  );
}