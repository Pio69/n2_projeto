import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  var tituloController = TextEditingController();
  var descController = TextEditingController();
  var valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Classificados')),
      body: new SingleChildScrollView(
        child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                new TextFormField(
                  controller: tituloController,
                  decoration: new InputDecoration(hintText: 'Titulo'),
                  maxLength: 60,
                ),
                new TextFormField(
                  controller: descController,
                  decoration: new InputDecoration(hintText: 'Descrição'),
                  keyboardType: TextInputType.phone,
                  maxLength: 150,
                ),
                new TextFormField(
                  controller: valorController,
                  decoration: new InputDecoration(hintText: 'Valor'),
                  keyboardType: TextInputType.emailAddress,
                ),
                new SizedBox(height: 15.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () async {
                    if (!tituloController.text.isEmpty &&
                        !descController.text.isEmpty &&
                        !valorController.text.isEmpty) {
                      getUserApi(
                          tituloController, descController, valorController);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: const Text("Anunciado com sucesso!"),
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: const Text(
                                  "Verifique se todos campos foram preenchidos corretamente!"),
                            );
                          });
                    }
                  },
                  child: Text('Enviar'),
                )
              ],
            )),
      ),
    );
  }
}

Future<void> getUserApi(
    tituloController, descController, valorController) async {
  final response = await http.post(Uri.parse(
      'https://smartgarden.onlosant.com/classificados/post?titulo=${tituloController.text}&desc=${descController.text}&valor=${valorController.text}'));
  if (response.statusCode == 200) {
  } else {}
}
