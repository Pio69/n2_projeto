import 'package:flutter/material.dart';
import 'package:n2_projeto/pages/data.page.dart';
import 'package:n2_projeto/pages/events.page.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Classificados')),
      body: Center(
          child: new SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataPage(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "QUERO COMPRAR",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            width: 300,
            height: 200,
          ),
          SizedBox(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventsPage(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "QUERO VENDER",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            width: 300,
            height: 200,
          )
        ]),
      )),
    );
  }
}
