import 'package:flutter/material.dart';

import 'itemList.dart';

import './lista.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1A27),
        title: Center(
          child: SizedBox(
            width: 150,
            child: Text('Classificados'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (BuildContext context, int index) {
                      return userList(context, index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
