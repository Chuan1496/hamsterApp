import 'package:flutter/material.dart';
import 'weight.dart';
import 'environment.dart';
import 'behavior.dart';
import 'feeding.dart';

class detailPage extends StatelessWidget {
  const detailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Functions'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20,
            height: 1, fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  width:200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/images/portrait1.jpg'),
                      fit:BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    border: Border.all(
                      width: 3,
                      color: Colors.orangeAccent,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.male,
                          color: Colors.blue,
                          size: 27,
                        ),
                        const Text(
                          '  Machi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.black,
                            fontSize: 22,
                          ),
                        ),
                        const Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.cake,
                          color: Colors.black,
                          size: 27,
                        ),
                        const Text(
                          '  03/11/23',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color:Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                feedingSection(context),
                behaviorSection(context),
              ],
            ),
            Row(
              children: [
                weightSection(context),
                environmentSection(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//The feeding section
Widget feedingSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
      child: Column(
      children: [
        Container(
          width: 90,
          height: 90,
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.restaurant_outlined,size: 70,),
              alignment: Alignment.center,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const feedingPage()),
                );
              },
            ),
          ),
        ),
        Text(
          'Food',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          '10:00 a.m.',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color:Colors.lightBlue,
          ),
        ),
      ],
    ),
  );
}

//The behavior section
Widget behaviorSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
    child: Column(
      children: [
        Container(
          width: 90,
          height: 90,
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.work_history,size: 70,),
              alignment: Alignment.center,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const behaviorPage()),
                );
              },
            ),
          ),
        ),
        Text(
          'Behavior',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          'Active',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color:Colors.green,
          ),
        ),
      ],
    ),
  );
}

//The weight section
Widget weightSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
    child: Column(
      children: [
        Container(
          width: 90,
          height: 90,
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.local_hospital,size: 70,),
              alignment: Alignment.center,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const weightPage()),
                );
              },
            ),
          ),
        ),
        Text(
          'Weight',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          '121 g',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color:Colors.lightBlue,
          ),
        ),
      ],
    ),
  );
}

//The environment section
Widget environmentSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
    child: Column(
      children: [
        Container(
          width: 90,
          height: 90,
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.water_drop,size: 70,),
              alignment: Alignment.center,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const environPage()),
                );
              },
            ),
          ),
        ),
        Text(
          'Environment',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          'Dirty',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color:Colors.red,
          ),
        ),
      ],
    ),
  );
}