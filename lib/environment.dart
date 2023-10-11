import 'package:flutter/material.dart';

class environPage extends StatelessWidget {
  const environPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Environment'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20,
            height: 1, fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: Image.asset('assets/images/temperature.png',
                      width:100,
                      height: 200,
                      fit:BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 25, 0, 0),
                  child: Image.asset('assets/images/moisture.png',
                      width:100,
                      height: 230,
                      fit:BoxFit.cover),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 5, 0, 0),
                  child: Text("26.4 °C",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 5, 0, 0),
                  child: Text("72 %",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 350,
              height: 180,
              margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: Text("Last cleaning time:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("14 April",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 155),
                        child: Text("8 days past",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[500],
                            )
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 110,
                    margin: const EdgeInsets.fromLTRB(100, 10, 0, 0),
                    child:Column(
                      children: [
                        Icon(
                          Icons.mood_bad_outlined,
                          size: 80,
                          color: Colors.red,
                        ),
                        Text("Dirty!!",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}