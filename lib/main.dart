import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redi_app/views/login.dart';
import 'package:redi_app/views/login_page.dart';
import 'controllers/controller_agente_de_campo.dart';
import 'controllers/controller_login.dart';



void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AgenteDeCampoController>(
          create: (_) => AgenteDeCampoController(),
          dispose: (_,controller) => controller.dispose,
        ),
        Provider<LoginController>(
          create: (_) => LoginController(),
          dispose: (_,controller) => controller.dispose,
        )
      ],
      child:MaterialApp(
        title: 'Navigation Basics',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Login(),
      )  
    );
  }
}