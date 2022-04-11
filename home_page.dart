import 'package:flutter/material.dart';

import '../utils/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(
          color: Colors.black),
          ),
      ),
      body: Center(
        child: Container(
          child: Text("Wellcome to Duaa Anis"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
