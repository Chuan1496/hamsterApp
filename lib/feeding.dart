import 'package:flutter/material.dart';
import 'package:hamster/history.dart';

class feedingPage extends StatelessWidget {
  const feedingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20,
            height: 1, fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              height: 170,
              color: Colors.yellow[200],
              alignment: Alignment.topLeft,
              child:Row(
                children: [
                  titleSection(context),
                ],
              ),
            ),
            Container(
              height: 500,
              color: Colors.grey[300],
              alignment: Alignment.topLeft,
              child:Column(
                children: [
                  scheduleSection('  AM 07:25','  everyday','  Food Quantity: 3 gram(s)',
                      Icon(
                        Icons.toggle_on_outlined,
                        size: 35,
                        color: Colors.green,
                      )
                  ),
                  scheduleSection('  PM 02:45','  everyday','  Food Quantity: 4 gram(s)',
                      Icon(
                        Icons.toggle_off_outlined,
                        size: 35,
                        color: Colors.grey,
                      )
                  ),
                  scheduleSection('  AM 10:00','  Tuesday','  Food Quantity: 10 gram(s)',
                      Icon(
                        Icons.toggle_on_outlined,
                        size: 35,
                        color: Colors.green,
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
                    child:Icon(
                      Icons.add_circle,
                      size: 35,
                      color: Colors.blue,
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

Widget titleSection(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: SizedBox(
          width: 50,
          height: 50,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const historyPage()),
                );
              },
              child: Icon(
                Icons.history_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
        child: SizedBox(
          width: 150,
          height: 150,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: const Icon(
                      Icons.star_border,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: const Text(
                      'Express Feed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                        fontSize: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: SizedBox(
          width: 50,
          height: 50,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.list_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

//The schedule editing section
Widget scheduleSection(String time, String frequency, String amount, Icon icon) {
  return Container(
    width: 250,
    height: 70,
    margin: const EdgeInsets.fromLTRB(70, 20, 0, 0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Text(
              frequency,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Text(
              amount,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(width: 30,),
        icon,
      ],
    ),
  );
}

