import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class provider extends StatefulWidget {
  const provider({Key? key}) : super(key: key);

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    print("build");

    return Scaffold(
      backgroundColor: Color(0xff023047),
      appBar: AppBar(
        title: Center(child: Text('Counter with Provider')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
              child: Text(countProvider.x.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
