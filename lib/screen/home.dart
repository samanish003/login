import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Manish123";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("ABC"),
      ),

      body: Center(
        child: Text ("Welcome to $days days " + name),
      ),
      drawer: Drawer(),
    );

  }
}
