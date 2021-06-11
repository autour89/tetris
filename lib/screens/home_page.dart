import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tetris/screens/extensions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
            child: Stack(
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Click to move square on screen',
        child: const Icon(Icons.add),
      ),
    );
  }
}
