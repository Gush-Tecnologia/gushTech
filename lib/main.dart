import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller_facade.dart';
import 'views/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
          dispose: (_,controller) => controller.displose,
        )
      ],
      child:MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: LoginPage(),
  )
      
      );
  }
}