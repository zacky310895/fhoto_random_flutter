import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(child: Text("Random Foto")),
          backgroundColor: Colors.white,
        ),
        body: const MagicFhoto(),
      ),
    ),
  );
}

class MagicFhoto extends StatefulWidget {
  const MagicFhoto({super.key});

  @override
  State<MagicFhoto> createState() => _MagicFhotoState();
}

class _MagicFhotoState extends State<MagicFhoto> {
  // ignore: non_constant_identifier_names
  int leftMagicNumber = 1;
  int rightMagicNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  leftMagicNumber = Random().nextInt(5) + 1;
                  rightMagicNumber = Random().nextInt(5) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset('images/foto$leftMagicNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  leftMagicNumber = Random().nextInt(5) + 1;
                  rightMagicNumber = Random().nextInt(5) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset('images/foto$rightMagicNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
