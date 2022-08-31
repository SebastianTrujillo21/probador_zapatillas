import 'package:flutter/material.dart';
import 'package:probador_zapatillas/pages/catalogo_page.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String userNameValue;
  late String passwordValue;
  final formKey = GlobalKey<FormState>();

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
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Username or Email"),
                      // ignore: non_constant_identifier_names
                      onSaved: (Value) {
                        userNameValue = Value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Llene este campo";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(labelText: "Password"),
                      // ignore: non_constant_identifier_names
                      onSaved: (Value) {
                        passwordValue = Value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Llene este campo";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _catalogoPage(context);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.cyan),
                          minimumSize:
                              MaterialStateProperty.all(const Size(500, 45)),
                        ),
                        child: const Text("LOG IN"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Center(
                          child: Text(
                        "OR",
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton.icon(
                        label: const Text(
                          "LOGIN WITH FACEBOOK",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Image.asset(
                          "assets/images/facebook_logo.png",
                          color: Colors.white,
                          height: 24,
                          width: 24,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF415893)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(500, 45)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton.icon(
                        label: const Text(
                          "LOGIN WITH TWITER",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Image.asset(
                          "assets/images/twitter-logo.png",
                          color: Colors.white,
                          height: 24,
                          width: 24,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF1DA1F2)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(500, 45)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton.icon(
                        label: const Text(
                          "LOGIN WITH GOOGLE",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Image.asset(
                          "assets/images/google-logo.png",
                          height: 24,
                          width: 24,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(500, 45)),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ]),
                ),
              ),
            ],
          )),
    );
  }

  void _config() {
    //por si tiene alguna accion el boton de mas
    return;
  }

  void _catalogoPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.of(context).pushNamed("/catalogo",
          arguments: CatalogoPageArgument(username: userNameValue));
    }
  }
}
