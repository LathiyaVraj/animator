import 'dart:math';

import 'package:flutter/material.dart';

class infoPage extends StatefulWidget {
  const infoPage({Key? key}) : super(key: key);

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> with TickerProviderStateMixin {
  late AnimationController ct;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ct = AnimationController(
        lowerBound: 0,
        upperBound: 2 * pi,
        vsync: this,
        duration: Duration(milliseconds: 1000))
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(res['name']),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            AnimatedBuilder(
                animation: ct,
                builder: (context, _) {
                  return Transform.rotate(
                    angle: ct.value,
                    child: Image.asset(
                      res['image'],
                      height: 250,
                    ),
                  );
                }),
            SizedBox(
              height: 70,
            ),
            Text(
              res['info'],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
