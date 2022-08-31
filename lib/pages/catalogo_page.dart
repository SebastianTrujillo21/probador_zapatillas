import 'package:flutter/material.dart';

void main() => runApp(const CatalogoPage());

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    CatalogoPageArgument arguments =
        ModalRoute.of(context)!.settings.arguments as CatalogoPageArgument;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(arguments.username),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogoPageArgument {
  String username;
  CatalogoPageArgument({required this.username});
}
