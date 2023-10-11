import 'package:flutter/material.dart';
import 'detail.dart';

void main() => runApp(
  MaterialApp(
    title: 'MyApp',
    home: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Hamsters'),
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
              firstSection(context),
              secondSection(context),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Icon(
                  Icons.add_circle,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//The first hamster's section
Widget firstSection(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          //portraits
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //photo
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                width: 300,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/images/portrait1.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const detailPage()),
                      );
                    },
                    //borderRadius: BorderRadius.circular(10),
                  ),
                ),
                /*decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/portrait1.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),*/
              ),
              //name & status
              Text(
                'Machi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Active',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//The second hamster's section
Widget secondSection (BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          //portraits
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //photo
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                width: 300,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/images/portrait2.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const detailPage()),
                      );
                    },
                    //borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              //name & status
              Text(
                'Pudding',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sleeping',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}