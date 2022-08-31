import 'package:flutter/material.dart';

void main() => runApp(AdidasPage());

// ignore: must_be_immutable
class AdidasPage extends StatelessWidget {
  AdidasPage({super.key});
  List<String> zapatillas = [
    "assets/images/zapatilla1.jpg",
    "assets/images/zapatilla2.jpg",
    "assets/images/zapatilla3.jpg",
    "assets/images/zapatilla4.jpg"
  ];

  List<String> nombre_zapatillas = [
    "Air Force 1 amarilla",
    "playeras Nike 97",
    "Trainning Nike",
    "Cortez"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Container(),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(15),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search people & places",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: Center(
            child: ListView.builder(
          itemCount: zapatillas.length,
          itemBuilder: (BuildContext context, int index) {
            final zapatilla = zapatillas[index];
            final nombreZapatilla = nombre_zapatillas[index];
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(zapatilla),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.black.withOpacity(0.35),
                        child: ListTile(
                          title: Text(
                            nombreZapatilla,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.favorite),
                            onPressed: () {},
                            iconSize: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
          },
        )),
      ),
    );
  }
}
