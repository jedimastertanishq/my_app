import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[600],
          title: Text("Catalog app"),
        ),
        drawer: Drawer(),
        body: Center(),
      ),
      onWillPop: () async => false,
    );
  }
}
