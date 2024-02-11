import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'styles.dart' as styles;

const primary = Color(0Xff071322);

void main() {   
    
  runApp(const MyApp());
}


const themeColor  = Color.fromARGB(255, 7, 19, 22);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setApplicationSwitcherDescription(
      const ApplicationSwitcherDescription(
        label: 'My Flutter Windows App',
        primaryColor: 0xff071322, // Set your desired color
      ),
    );

    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Annex Cypress',
      theme: ThemeData(
        fontFamily: "annex",
        
        appBarTheme: const AppBarTheme(
          backgroundColor: primary
        ),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        useMaterial3: true,
          textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // For body text
      ),),
      home: const MyHomePage(title: 'Annex:Cypress'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: primary,
      
      body: 
      
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
         Container(
          decoration: const BoxDecoration(
            image:  DecorationImage(image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover
            )
          ),
           child: SafeArea(
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
                      // Column is also a layout widget. It takes a list of children and
                      // arranges them vertically. By default, it sizes itself to fit its
                      // children horizontally, and tries to be as tall as its parent.
                      //
                      // Column has various properties to control how it sizes itself and
                      // how it positions its children. Here we use mainAxisAlignment to
                      // center the children vertically; the main axis here is the vertical
                      // axis because Columns are vertical (the cross axis would be
                      // horizontal).
                      //
                      // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
                      // action in the IDE, or press "p" in the console), to see the
                      // wireframe for each widget.
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const SizedBox(height: 12,),
                                              // Store
                         Center(
                          child:  Container(
                              alignment: Alignment.center,
                              child: RichText(
                                text: const TextSpan(children: <TextSpan>[
                                  TextSpan(text: "Annex: ", style: TextStyle(color: Colors.white, fontSize: 23)),
                                  TextSpan(text: "Cypress ", style: TextStyle(color: Color.fromARGB(255, 250, 174, 59), fontSize: 23)),
                                  TextSpan(text: "Offers", style: TextStyle(color: Colors.red, fontSize: 23)),
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
                                    styles.shadow(Color.fromARGB(94, 228, 34, 44))
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
                                          width: 100,
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
                              decoration:  BoxDecoration(color:  Color.fromARGB(230, 255, 91, 91),
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
           ),
         ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: const Color.fromARGB(255, 8, 26, 31),
        foregroundColor: Colors.cyan,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
