import 'package:flutter/material.dart';

const primary = Color(0Xff071322);

BoxShadow shadow (Color color){
  return  BoxShadow( color: Color(color.value),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                    );
}

TextStyle textStyle (Color color, double size){
  return TextStyle( color: Color(color.value), fontFamily: "annex", fontSize: size);
}

TextStyle textError (double size){
  return TextStyle( color: Colors.red, fontFamily: "annex", fontSize: size);
}

InputDecoration inputNone (String? hint) {
  return  InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Color(0xffdddddd)),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffeeeeee), width: 0/6),
    ),
  );
}

// method for simple dialog
AlertDialog dialog(BuildContext context, String? title,String? text, List<Widget> hob, bool error ){
  Size size = MediaQuery.of(context).size;
  return AlertDialog(
    title: SizedBox(
      width: size.width,
      child:  Center(
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12) ,
              child: const Icon(Icons.info),
            ),
            Text(title!)

          ],
        ),
      ),
    ),
    content:  Text(text!, style: textError(16),),
    actions: hob
  );
}

