import 'package:animator/info_page.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(animator());
}

class animator extends StatefulWidget {
  const animator({Key? key}) : super(key: key);

  @override
  State<animator> createState() => _animatorState();
}

class _animatorState extends State<animator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "Galaxy Planets",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
                backgroundColor: Colors.black,
              ),
              backgroundColor: Colors.black,
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: Global.planetName
                        .map((e) => Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('info_page', arguments: e);
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      e['name'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(color: Colors.white),
                              ],
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
        'info_page': (context) => const infoPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
