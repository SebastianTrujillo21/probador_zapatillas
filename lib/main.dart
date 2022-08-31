import 'package:flutter/material.dart';
import 'package:probador_zapatillas/pages/catalogo_page.dart';
import 'package:probador_zapatillas/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const LoginPage(),
        "/catalogo": (BuildContext context) => const CatalogoPage()
      },
    );
  }
}
