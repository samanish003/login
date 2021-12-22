import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Manish12";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(


        title: const Text("ABC",style: TextStyle(color: Colors.red),
      ),
      ),

      body: Center(
        child: Text ("Welcome to $days days " + name),
      ),
      drawer: MyDrawer(),
    );

  }
}
