import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int screeSize = 1;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
      setState(() {
        screeSize = 2;
      });
    }
    if (MediaQuery.of(context).size.width < 500) {
      setState(() {
        screeSize = 3;
      });
    }
    if (MediaQuery.of(context).size.width > 800) {
      setState(() {
        screeSize = 1;
      });
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            margin: const EdgeInsets.only(left: 30),
            child: Image.asset(
              'assets/Images/menu.png',
              height: 30,
              width: 30,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Images/logo.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                if (screeSize != 3)
                  const Text(
                    'DOMINEUM',
                    style: const TextStyle(letterSpacing: 5),
                  ),
              ],
            )),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.center,
              height: 10,
              width: 120,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Text(
                'Get Started',
                style: TextStyle(letterSpacing: 3, fontSize: 13),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 30, bottom: 40),
                child: Image.asset(
                  'assets/Images/arrow.png',
                  height: 30,
                  width: 30,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints cons) =>
                        Container(
                      width: cons.maxHeight * 0.4,
                      height: 200,
                      child: CustomPaint(
                        painter: Painter(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (screeSize == 1)
                          const SizedBox(
                            width: 700,
                          ),
                        Padding(
                            padding: screeSize == 1
                                ? const EdgeInsets.only(top: 130)
                                : screeSize == 2
                                    ? const EdgeInsets.all(50)
                                    : const EdgeInsets.all(0),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 400,
                                  width: screeSize == 1
                                      ? 500
                                      : screeSize == 2
                                          ? 400
                                          : 350,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text(
                                        "VERIFICATION MADE EASY",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.white,
                                            letterSpacing: 1),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      const Text(
                                        "DOMINEUM CREDENTIAL VERIFICATION SYSTEM IS A 3 SIDED MARKETPLACE DESIGNED TO BRIDGE THE ONLINE  AND OFFLINBE WORLD FOR SHARING  VERIFIABLE DOCUMENTS  AND CREDENTIALS BETWEEN ISSUING INSTITUTIONS , BUSINESSESS/INDIVIDUALS AND 3RD PARTY VAERIFIERS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            height: 3 / 2,
                                            wordSpacing: 3),
                                      ),
                                      const SizedBox(height: 30),
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Row(
                                              children: [
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                  'assets/Images/appstore.png',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                const Text(
                                                  "App Store",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            height: 40,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Row(
                                              children: [
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                  'assets/Images/playstore.png',
                                                  height: 20,
                                                  width: 20,
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                const Text(
                                                  "PlayStore",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;
    paint.strokeWidth = 10;

    final paint2 = Paint();
    paint2.color = Colors.black;

    canvas.drawPaint(paint2);
    if (screeSize == 1) {
      canvas.drawLine(const Offset(100, 100), const Offset(100, 500), paint);
      canvas.drawLine(const Offset(95, 500), const Offset(500, 500), paint);
      canvas.drawLine(const Offset(500, 100), const Offset(495, 500), paint);
      canvas.drawLine(const Offset(95, 100), const Offset(505, 100), paint);
      canvas.drawLine(const Offset(100, 100), const Offset(400, 275), paint);
      canvas.drawLine(const Offset(335, 400), const Offset(500, 100), paint);
      canvas.drawLine(const Offset(100, 500), const Offset(270, 200), paint);
      canvas.drawLine(const Offset(200, 325), const Offset(495, 500), paint);
    }
  }

  @override
  bool shouldRepaint(Painter oldDelegate) => false;
}
