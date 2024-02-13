import 'package:cypress/templates/template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplatePage(size: MediaQuery.sizeOf(context), child:
      const Center(
        child: SpinKitChasingDots(color: Colors.red, size: 50),
      )
    );
  }
}
