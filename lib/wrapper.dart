import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cypress/auth/auth.dart';
import 'package:cypress/home.dart';
import 'package:cypress/login.dart';

import 'models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<UserData>(context);

    return StreamBuilder<User?>(
      stream: authService.getUser,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return const Home();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}