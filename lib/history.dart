import 'package:flutter/material.dart';

class historyPage extends StatelessWidget {
  const historyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feeding History'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20,
            height: 1, fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
              child: Text("22 April",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
              ),
            ),
            scheduleSection('  PM 02:45','  everyday','  Food Quantity: 4 gram(s)','Completed',Colors.green),
            scheduleSection('  AM 07:25','  everyday','  Food Quantity: 3 gram(s)','Completed',Colors.green),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
              child: Text("21 April",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )
              ),
            ),
            scheduleSection('  PM 02:45','  everyday','  Food Quantity: 4 gram(s)','Completed',Colors.green),
            scheduleSection('  PM 01:30','  everyday','  Food Quantity: 4 gram(s)','          Error',Colors.red),
            scheduleSection('  AM 10:00','  Friday','  Food Quantity: 7 gram(s)','Completed',Colors.green),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
              child: Text("20 April",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )
              ),
            ),
            scheduleSection('  PM 06:15','  Thursday','  Food Quantity: 5 gram(s)','Completed',Colors.green),
            scheduleSection('  AM 07:25','  everyday','  Food Quantity: 3 gram(s)','Completed',Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget scheduleSection(String time, String frequency, String amount, String status, Color color) {
  return Container(
    width: 300,
    height: 70,
    margin: const EdgeInsets.fromLTRB(60, 8, 0, 0),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(55, 5, 0, 0),
          child: Text(status,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: color,
              )
          ),
        ),
      ],
    ),
  );
}