import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int randomdice1 = 1;
  int randomdice2 = 1;

  void dice() {
    randomdice1 = Random().nextInt(6) + 1;
    randomdice2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      dice();
                    });
                  },
                  child: Container(
                      child: Image.asset("images/image$randomdice1.png",
                          width: 150))),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      dice();
                    });
                  },
                  child: Container(
                      child: Image.asset(
                    "images/image$randomdice2.png",
                    width: 150,
                  ))),
            ],
          )
        ],
      ),
    );
  }
}
