import 'package:flutter/material.dart';

void main() {
  runApp(animator2());
}

class animator2 extends StatefulWidget {
  const animator2({Key? key}) : super(key: key);

  @override
  State<animator2> createState() => _animator2State();
}

class _animator2State extends State<animator2> {
  var myColor = 0;
  var myColor2 = 0;
  var Slidervalue = 180;
  var Weight = 60;
  var Age = 28;
  var modWeight = 1;
  var modWeight2 = 0;
  var modAge = 1;
  var modAge2 = 0;
  var myBox = BoxDecoration(
      color: Color(0xff1d1e33), borderRadius: BorderRadius.circular(10));
  double mfheight = 5;
  double mfwidth = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff090e21),
        ),
        body: Container(
          color: Color(0xff090e21),
          child: Column(
            children: [
              Expanded(
                flex: 28,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 1500),
                    builder: (context, double degree, _) {
                      return Transform.scale(
                        scale: degree,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  myColor = 1;
                                  myColor2 = 0;
                                });
                              },
                              child: Ink(
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 1000),
                                  height: 190,
                                  width: 160,
                                  child: Column(
                                    children: [
                                      Text(
                                        "♀",
                                        style: TextStyle(
                                          fontSize: 110,
                                          color: (myColor == 1)
                                              ? const Color(0xffeb1555)
                                              : Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: (myColor == 1)
                                              ? const Color(0xffeb1555)
                                              : Colors.white,
                                          fontWeight: (myColor == 1)
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: (myColor == 1)
                                        ? Color(0xff3b3c4d)
                                        : Color(0xff1d1e33),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  myColor2 = 1;
                                  myColor = 0;
                                });
                              },
                              child: Ink(
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "♂",
                                        style: TextStyle(
                                          fontSize: 110,
                                          color: (myColor == 0)
                                              ? const Color(0xffeb1555)
                                              : Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Male",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: (myColor2 == 1)
                                              ? const Color(0xffeb1555)
                                              : Colors.white,
                                          fontWeight: (myColor2 == 1)
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: (myColor2 == 1)
                                        ? Color(0xff3b3c4d)
                                        : Color(0xff1d1e33),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 2.5,
              ),
              Expanded(
                flex: 33,
                child: Center(
                    child: TweenAnimationBuilder(
                        tween: Tween<Offset>(
                            begin: Offset(-400, 0), end: Offset(0, 0)),
                        duration: Duration(milliseconds: 1500),
                        builder: (context, Offset _change, _) {
                          return Transform.translate(
                            offset: _change,
                            child: Container(
                              height: 190,
                              width: 335,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 20),
                                    const Text(
                                      "HEIGHT",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff626473),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "$Slidervalue",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 7),
                                        Container(
                                          height: 100,
                                          alignment: Alignment(0, 0.2),
                                          child: Text(
                                            "cm",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff626473),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Slider(
                                      value: Slidervalue.toDouble(),
                                      onChanged: (val) {
                                        setState(() {
                                          Slidervalue = val.toInt();
                                        });
                                      },
                                      thumbColor: Color(0xffeb1555),
                                      activeColor: Color(0xff5c1d1),
                                      inactiveColor: Color(0xff555555),
                                      max: 270,
                                      min: 90,
                                    )
                                  ]),
                              decoration: myBox,
                            ),
                          );
                        })),
              ),
              SizedBox(height: 2),
              Expanded(
                  flex: 28,
                  child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(milliseconds: 1500),
                      builder: (context, double scale, _) {
                        return Transform.scale(
                          scale: scale,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 180,
                                width: 160,
                                decoration: myBox,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Weight",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "$Weight",
                                      style: TextStyle(
                                        fontSize: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Weight--;
                                              modWeight = 1;
                                              modWeight2 = 0;
                                            });
                                          },
                                          child: Ink(
                                            child: Container(
                                              height: 45,
                                              width: 45,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 40,
                                                    color: Colors.white),
                                              ),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff4c4f5e),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Weight++;
                                              modWeight = 1;
                                              modWeight2 = 0;
                                            });
                                          },
                                          child: Ink(
                                            child: Container(
                                              child: Icon(Icons.add,
                                                  size: 30,
                                                  color: Color(0xfff67fa4)),
                                              height: 45,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff4c4f5e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 180,
                                width: 160,
                                decoration: myBox,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "$Age",
                                      style: TextStyle(
                                        fontSize: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Age--;
                                              modWeight = 1;
                                              modWeight2 = 0;
                                            });
                                          },
                                          child: Ink(
                                            child: Container(
                                              height: 45,
                                              width: 45,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff4c4f5e)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Age++;
                                              modAge2 = 1;
                                              modAge = 0;
                                            });
                                          },
                                          child: Ink(
                                            child: Container(
                                              child: Icon(
                                                Icons.add,
                                                size: 30,
                                                color: Color(0xfff67fa4),
                                              ),
                                              height: 45,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: (modAge2 == 1)
                                                    ? Color(0xff6e6f7a)
                                                    : Color(0xff4c4f5e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
              SizedBox(height: 40),
              Expanded(
                flex: 12,
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                      child: TweenAnimationBuilder(
                          tween: Tween<Offset>(
                              begin: Offset(400, 0), end: Offset(0, 0)),
                          duration: Duration(milliseconds: 1500),
                          builder: (context, Offset change, _) {
                            return Transform.translate(
                              offset: change,
                              child: Container(
                                height: 75,
                                width: 300,
                                alignment: Alignment.center,
                                child: Text(
                                  "Calculate",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffeb1555),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            );
                          })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
