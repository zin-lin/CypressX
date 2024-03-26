import 'package:cypress/templates/styles.dart';
import 'package:cypress/templates/template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'auth/auth.dart';

class LoadingPage extends StatelessWidget {
  final String email;
  final String password;
  final String mode;
  const LoadingPage({super.key, required this.email, required this.password, required this.mode});


  @override
  Widget build(BuildContext context) {



    () async {
      mode == "Log In" ? await UserData().signIn(email, password).then((value) => {
        if (value == null){
          showDialog(context: context, builder: (BuildContext context){
            return dialog(context, "Annex Sever Error","Invalid credentials for log in, user may try again", [TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop();

              },
              child: const Text('OK'),
            ),], false);
          })
        }
        else{

          Navigator.of(context).pop()
          // Future.delayed(Duration.zero, () {
          //   Navigator.of(context)?.pop(); // Close the LoadingPage
          // })
        }
      }): await UserData().register(email, password).then((value) => {
      if (value == null){
        showDialog(context: context, builder: (BuildContext context){
        return dialog(context, "Annex Sever Error","Network Connectivity Issues or User creation not allowed at this time", [TextButton(
        onPressed: () {
          Navigator.of(context).pop(); // Close the dialog
          Navigator.of(context).pop();

        },
        child: const Text('OK'),
        ),], false);
        })
      }
      else{
      Navigator.of(context).pop()
      // Future.delayed( Duration.zero, () {
      // Navigator.of(context)?.pop(); // Close the LoadingPage
      // })
      }
    });
    }();

    return TemplatePage(size: MediaQuery.sizeOf(context), child:
      const Center(
        child: SpinKitChasingDots(color: Colors.red, size: 50),
      )
    );
  }
}
