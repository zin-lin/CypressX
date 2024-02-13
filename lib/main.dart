import 'package:cypress/auth/auth.dart';
import 'package:cypress/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'styles.dart' as styles;

const primary = styles.primary;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

    

    return MultiProvider(
      providers: [
        Provider<UserData>(
          create: (_) => UserData(),
        ),
      ],
      child: MaterialApp(
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
      ),
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
    Size screenSize = MediaQuery.of(context).size;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: primary,

      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
        image:  DecorationImage(image: AssetImage("assets/bg.png"),
        fit: BoxFit.cover
        )
        ),
        child: const Wrapper() ,),

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          UserData().signOut().catchError((err)=>{
            // Do Abs Nothing
          });
        },
        backgroundColor: const Color.fromARGB(255, 8, 26, 31),
        foregroundColor: Colors.cyan,
        tooltip: 'Increment',
        child: const Icon(Icons.question_answer),


      ), // This trailing comma makes auto-formatting nicer for build meth// ods.

    );
  }
}
