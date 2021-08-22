import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tetris/screens/extensions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Positioned _square;
  final double _squareSize = 50;
  double _x = 0, _y = 0;
  double get increment => _squareSize / 2;

  void moveSquare(BuildContext context) {
    var size = MediaQuery.of(context).size;

    if (_y + increment + _squareSize >= size.height) return;

    setState(() {
      _x += increment;
      _y += increment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              left: _x,
              top: _y,
              child: Container(
                color: Colors.red,
                width: _squareSize,
                height: _squareSize,
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => moveSquare(context),
        tooltip: 'Click to move square on screen',
        child: const Icon(Icons.add),
      ),
    );
  }
}
