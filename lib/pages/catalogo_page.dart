import 'package:flutter/material.dart';

void main() => runApp(CatalogoPage());

// ignore: must_be_immutable
class CatalogoPage extends StatelessWidget {
  CatalogoPage({super.key});
  List<String> names = ["Adidas", "Nike", "Puma", "Reebok", "New Athletic"];
  List<String> logos = [
    "assets/images/adidas-logo.png",
    "assets/images/nike-logo.png",
    "assets/images/puma_logo.png",
    "assets/images/reebok-logo.png",
    "assets/images/New_Athletic_logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    CatalogoPageArgument arguments =
        ModalRoute.of(context)!.settings.arguments as CatalogoPageArgument;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Probador AR',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Busqueda de Marcas'),
            actions: <Widget>[
              IconButton(onPressed: _config, icon: const Icon(Icons.search))
            ],
          ),
          drawer: _getDrawe(context, arguments.username),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  final name = names[index];
                  final logo = logos[index];
                  return ListTile(
                    minVerticalPadding: 30,
                    minLeadingWidth: 60,
                    title: Text(name),
                    leading: Image.asset(
                      logo,
                      height: 50,
                      width: 50,
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print(name);
                    },
                  );
                }),
          )),
    );
  }

  void _config() {
    //por si tiene alguna accion el boton de search
    return;
  }
}

Widget _getDrawe(BuildContext context, String name) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(name),
          accountEmail: null,
          currentAccountPicture: const Icon(Icons.person),
        ),
        ListTile(
          title: const Text("Log Out"),
          leading: const Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}

class CatalogoPageArgument {
  String username;
  CatalogoPageArgument({required this.username});
}
