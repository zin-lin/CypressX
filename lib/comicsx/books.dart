import 'package:cypress/templates/template.dart';
import 'package:flutter/material.dart';

import 'mybooks.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {

  var selIndx = 1;
  var selColor = const Color(0xffff6e6e);
  var deColor = const Color(0xff424242);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    void updateColors (int idx){
      setState(() {
        selIndx = idx;
      });
    }

    return Scaffold(
      body: TemplatePage(size: size, child:
               Center(
                 child: Column(
                   children: <Widget>[
                     const Books(),
                     // Nav bar
                      Container(
                        width: size.width,
                        height: 80,
                        padding: EdgeInsets.zero,
                        decoration: const BoxDecoration(color: Color(0xff0c1118)),
                        child:  Row(
                          children: [
                            Expanded(child: IconButton(onPressed: (){
                              setState(() {
                                selIndx = 0;
                              });
                              Navigator.of(context).pop();
                            }, icon:  const Icon(Icons.feed_outlined), color: selIndx == 0? selColor: deColor,)),
      
                            Expanded(child: IconButton(onPressed: (){
                              setState(() {
                                selIndx = 1;
                              });
                            }, icon: const Icon(Icons.book), color: selIndx == 1? selColor: deColor,)),
      
                            Expanded(child: IconButton(onPressed: (){
                              setState(() {
                                selIndx = 2;
                              });
                            }, icon:  const Icon(Icons.search), color: selIndx == 2? selColor: deColor,)),
      
                            Expanded(child: IconButton(onPressed: (){
                              setState(() {
                                selIndx = 3;
                              });
                            }, icon:  const Icon(Icons.account_box_rounded), color: selIndx == 3? selColor: deColor,)),
                          ],
                        ),
      
                     )
      
                   ],
                 ),
               ),
      ),
    );
  }
}
