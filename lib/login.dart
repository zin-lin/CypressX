import 'package:cypress/auth/auth.dart';
import 'package:cypress/loading.dart';
import 'package:flutter/material.dart';
import 'templates/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mode = "Log In";

  void changeMode (){
    setState(() {
      if (mode == "Log In") {
        mode = "Register";
      } else {
        mode = "Log In";
      }

    });
  }
  void nuller () {
    // do abs nth
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    return  SafeArea(
        child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(30),
                child: const Image(image: AssetImage("assets/icc.png"), width: 90,),

              ),

              Center(
                child:  Container(
                  padding: const EdgeInsets.all(34),
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "Annex ", style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: "annex")),
                      TextSpan(text: "Cypress", style: TextStyle(color: Colors.red, fontSize: 23, fontFamily: "annex")),
                    ]),
                  ),
                ),
              ),

              // This is where the main body of functions will happen
              Container(
                alignment: Alignment.center,
                width: size.width * 0.80,
                height: 400,
                padding: const EdgeInsets.all(45),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                     shadow(const Color(0x5bffffff))
                  ]
                ),
                child:  Form(
                  child: Column(
                    children: [
                      Center(
                        child: Text(mode, style: textStyle(Colors.black, 23 ),),
                      ),
                  
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child:  Row(
                          children: [
                            Container( padding: const EdgeInsets.only(right: 7), child: const Icon(Icons.email, color: Color(0xffaaaaaa),)),
                            Text("email", style: textStyle( const Color(0xffaaaaaa), 16),)
                          ],
                        ),
                      ),
                  
                      Center(
                        child: TextFormField(
                          controller: email,
                          decoration: inputNone("@email"),
                        ),
                      ),
                  
                      const SizedBox(width: 0, height: 23,),
                  
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child:  Row(
                          children: [
                            Container( padding: const EdgeInsets.only(right: 7), child: const Icon(Icons.password, color: Color(0xffaaaaaa),)),
                            Text("password", style: textStyle( const Color(0xffaaaaaa), 16),)
                          ],
                        ),
                      ),
                  
                      Center(
                        child: TextFormField(
                          controller: password,
                          decoration: inputNone("@your password "),
                          obscureText: true,
                        ),
                      ),


                      Container(
                          width: size.width,
                          alignment: Alignment.center,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Container(padding: const EdgeInsets.all(12), child:
                              TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(Colors.orange),
                                    textStyle: MaterialStateProperty.all(const TextStyle(decoration: TextDecoration.underline, color: Colors.red, fontFamily: "annex"))),
                                onPressed: changeMode,
                                child:  Text(mode == "Log In"? " Register ": " Log In "),
                              )
                              ),

                              Container(padding: const EdgeInsets.all(12), child:
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all( const Color.fromARGB(
                                        255, 255, 89, 88)),
                                    shadowColor:MaterialStateProperty.all( const Color.fromARGB(
                                        255, 255, 156, 58)),
                                    foregroundColor: MaterialStateProperty.all(Colors.white70)
                                ),
                                onPressed: ()  {
                                  String em = email.text;
                                  String pass = password.text;
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoadingPage(email: em, password: pass,mode: mode,)));

                                },
                                child:  Text(mode),
                              )
                              ),
                            ],),
                          ),),

                    ],
                  ),
                ),
              )
            ],
          ),
        )
        )
    );
  }
}
