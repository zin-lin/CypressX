import 'package:flutter/material.dart';
import '../templates/styles.dart' as styles;

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height - 80,
      padding: const EdgeInsets.all(0),
      child: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(width: size.width,height: 20,),
                Container(alignment: Alignment.center,
                  margin: const EdgeInsets.all(30),
                  width: 350,
                  height: 400,
                  decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 29, 244),
                      image: const DecorationImage(image: AssetImage("assets/code.jpg"), fit: BoxFit.cover),
                      boxShadow: [
                        styles.shadow(const Color.fromARGB(61, 255, 34, 218))
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(33))
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 350),
                    alignment: Alignment.bottomCenter,
                    width: 350,
                    height: 50,
                    decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 29, 244),
                        boxShadow: [
                          styles.shadow(const Color.fromARGB(61, 255, 34, 218))
                        ],
                        borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(33), bottomRight: Radius.circular(33))
                    ),

                    child: Expanded(
                      child: TextButton(child: const Text("Add new book +",
                        style: TextStyle(color: Colors.white),),  onPressed: () => {},),
                    ),
                  ),
                ),


                Container(alignment: Alignment.center,
                  margin: const EdgeInsets.all(30),
                  width: 350,
                  height: 300,
                  decoration: const BoxDecoration(
                      image:  DecorationImage(image: AssetImage("assets/box.webp"), fit: BoxFit.cover),
                      borderRadius:  BorderRadius.all(Radius.circular(33))
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 250),
                    alignment: Alignment.bottomCenter,
                    width: 350,
                    height: 50,
                    decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 131, 29
                    ),
                        boxShadow: [
                          styles.shadow(const Color.fromARGB(62, 255, 134, 34))
                        ],
                        borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(33), bottomRight: Radius.circular(33))
                    ),

                    child: TextButton(child: const Text("Noting Here Yet",
                      style: TextStyle(color: Colors.white),),  onPressed: () => {},),
                  ),
                ),

                Container(
                  width: size.width,
                  height: size.height - 613 > 100 ? size.height - 613: 400,
                  padding: const EdgeInsets.all(20),
                  child: const SingleChildScrollView(
                    child: Column(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
