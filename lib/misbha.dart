import 'package:flutter/material.dart';

class Misbha extends StatefulWidget {
  Misbha({Key? key}) : super(key: key);

  @override
  State<Misbha> createState() => _MisbhaState();
}

List azkarList = ['سبحان الله ', 'الحمدالله', 'الله اكبر'];

class _MisbhaState extends State<Misbha> {
  int currentNumRoll = 0;
  int currentNumTisbh = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFE96615),
            Color(0xFFE0591B),
            Color.fromARGB(255, 197, 139, 105),
          ])),
        ),
        centerTitle: true,
        title: Text(
          "فَذَكِّرْ إِن نَّفَعَتِ الذِّكْرَى",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text(
                "${azkar()}",
                style: TextStyle(
                    color: Color.fromARGB(255, 247, 158, 106),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Color.fromARGB(255, 224, 88, 47),
                        offset: const Offset(1, 2),
                        blurRadius: 1,
                        spreadRadius: 4,
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(151, 240, 225, 205),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Text(
                  "عدد التسبيحات",
                  style: TextStyle(
                      color: Color.fromARGB(255, 247, 158, 106),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 248, 245, 245),
                          offset: const Offset(1, 2),
                          blurRadius: 1,
                          spreadRadius: 4,
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                '$currentNumTisbh',
                style: TextStyle(
                    color: Color.fromARGB(255, 223, 114, 81),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Color.fromARGB(255, 170, 152, 146),
                        offset: const Offset(2, 3),
                        blurRadius: 10,
                        spreadRadius: 4,
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentNumTisbh++;
                  if (currentNumTisbh == 100) {
                    currentNumRoll++;
                    currentNumTisbh = 0;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'اضغط هنا ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 216, 99, 31),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 248, 245, 245),
                          offset: const Offset(1, 1),
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ]),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: 5.0,
                    color: Colors.white,
                  ),
                  shape: CircleBorder(),
                  primary: Color.fromARGB(255, 233, 177, 103),
                  shadowColor: Colors.white,
                  elevation: 6,
                  minimumSize: Size(150, 150)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentNumRoll = 0;
                        currentNumTisbh = 0;
                      });
                    },
                    child: Text(
                      'البدء من جديد',
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 158, 106),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              color: Color.fromARGB(255, 224, 88, 47),
                              offset: const Offset(1, 2),
                              blurRadius: 1,
                              spreadRadius: 4,
                            ),
                          ]),
                    ),
                  ),
                  Text(
                    'الدوره رقم $currentNumRoll',
                    style: TextStyle(
                        color: Color.fromARGB(255, 247, 158, 106),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Color.fromARGB(255, 224, 88, 47),
                            offset: const Offset(1, 2),
                            blurRadius: 1,
                            spreadRadius: 4,
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String azkar() {
    if (currentNumTisbh <= 33) {
      return azkarList[0];
    } else if (currentNumTisbh == 34 || currentNumTisbh <= 66) {
      return azkarList[1];
    } else {
      return azkarList[2];
    }
  }
}
