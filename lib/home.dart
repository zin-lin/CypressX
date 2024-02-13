import 'package:flutter/material.dart';
import 'templates/styles.dart' as styles;

const primary = styles.primary;
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  height: 80,
                  child: ElevatedButton(


                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                        maximumSize: MaterialStateProperty.all(const Size(600,40)) ), onPressed:  () => {},
                    child: const Row(
                      children:<Widget> [
                        Icon(Icons.search),
                        Text("Search for Books ", style: TextStyle(color: Color.fromARGB(255, 180, 180, 180)),)

                      ],
                    ),
                  ),

                ),
              )
              ,
              SingleChildScrollView(

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12,),
                    // Store
                    Center(
                      child:  Container(
                        alignment: Alignment.center,
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(text: "Cypress ", style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: "annex")),
                            TextSpan(text: "Offers", style: TextStyle(color: Colors.red, fontSize: 23, fontFamily: "annex")),
                          ]),
                        ),
                      ),
                    ),

                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Center(
                        child: Row(
                          children: [
                            Container( height: 250, width: 200, decoration:  BoxDecoration(color: primary,
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                styles.shadow(const Color.fromARGB(94, 228, 34, 44))
                              ],
                            ),
                              margin: const EdgeInsets.all(26),
                              child:  Container(
                                padding: const EdgeInsets.all(60),
                                child:  Center(
                                    child:
                                    Column(
                                      children: [
                                        const Image(image: AssetImage("assets/book.png"),
                                          width: 90,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(3),
                                            child: const Text("ComicsX Template", style: TextStyle() , textAlign: TextAlign.center,))
                                      ],
                                    )
                                ),
                              ),
                            ),
                            Container( height: 250, width: 200, decoration:  BoxDecoration(color: primary,
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                styles.shadow(const Color.fromARGB(94, 34, 150, 228))
                              ],
                            ),
                              margin: const EdgeInsets.all(26),
                              child:  Container(
                                padding: const EdgeInsets.all(60),
                                child:  Center(
                                    child:
                                    Column(
                                      children: [
                                        const Image(image: AssetImage("assets/cv.png"),
                                          width: 100,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(3),
                                            child: const Text("CV Template", style: TextStyle() , textAlign: TextAlign.center,))
                                      ],
                                    )
                                ),
                              ),
                            ),

                            Container( height: 250, width: 200, decoration:  BoxDecoration(color: primary,
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                styles.shadow(const Color.fromARGB(94, 228, 137, 34))
                              ],
                            ),
                              margin: const EdgeInsets.all(26),
                              child:  Container(
                                padding: const EdgeInsets.all(60),
                                child:  Center(
                                    child:
                                    Column(
                                      children: [
                                        const Image(image: AssetImage("assets/novel.png"),
                                          width: 100,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(3),
                                            child: const Text("Novel Format", style: TextStyle() , textAlign: TextAlign.center,))
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    // Store
                    const Center(
                      child:  Text("AI Store", style: TextStyle(fontSize: 23),),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Container(alignment: Alignment.center,
                          margin: const EdgeInsets.all(30),
                          width: 350,
                          height: 400,
                          decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 131, 29
                          ),
                              image: const DecorationImage(image: AssetImage("assets/cmx.png"), fit: BoxFit.cover),
                              boxShadow: [
                                styles.shadow(const Color.fromARGB(62, 255, 134, 34))
                              ],
                              borderRadius: const BorderRadius.all(Radius.circular(33))
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(top: 350),
                            alignment: Alignment.bottomCenter,
                            width: 350,
                            height: 50,
                            decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 131, 29),
                                boxShadow: [
                                  styles.shadow(const Color.fromARGB(62, 255, 134, 34))
                                ],
                                borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(33), bottomRight: Radius.circular(33))
                            ),

                            child: TextButton(child: const Text("\$5 for 65 HD Images",
                              style: TextStyle(color: Colors.white),),  onPressed: () => {},),
                          ),
                        ),

                        Container(alignment: Alignment.center,
                          margin: const EdgeInsets.all(30),
                          width: 350,
                          height: 400,
                          decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 29, 244),
                              image: const DecorationImage(image: AssetImage("assets/jedi.png"), fit: BoxFit.cover),
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

                            child: TextButton(child: const Text("\$10 for 150 HD Images",
                              style: TextStyle(color: Colors.white),),  onPressed: () => {},),
                          ),
                        ),

                        Container(alignment: Alignment.center,
                          margin: const EdgeInsets.all(30),
                          width: 350,
                          height: 400,
                          decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 44, 44),
                              image: const DecorationImage(image: AssetImage("assets/str.png"), fit: BoxFit.cover),
                              boxShadow: [
                                styles.shadow(const Color.fromARGB(60, 255, 34, 34))
                              ],
                              borderRadius: const BorderRadius.all(Radius.circular(33))
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(top: 350),
                            alignment: Alignment.bottomCenter,
                            width: 350,
                            height: 50,
                            decoration:  BoxDecoration(color:  const Color.fromARGB(230, 255, 91, 91),
                                boxShadow: [
                                  styles.shadow(const Color.fromARGB(60, 255, 34, 34))
                                ],
                                borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(33), bottomRight: Radius.circular(33))
                            ),

                            child: TextButton(child: const Text("\$10 for 150 HD Images",
                              style: TextStyle(color: Colors.white),),  onPressed: () => {},),
                          ),
                        ),

                      ]),),

                    Center(

                      child: Container(alignment: Alignment.center,
                        decoration: const BoxDecoration(color:  Color.fromARGB(230, 255, 131, 29)),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
