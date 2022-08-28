import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors
              .indigo), //poder cambiar el color cuando sea minimizada la app
      title: 'Probador AR',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Probador AR'),
          backgroundColor: Colors.indigo, //cambiar color del appbar
          actions: <Widget>[
            IconButton(onPressed: _config, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void _config() {
    //por si tiene alguna accion el boton de mas
    return;
  }
}
