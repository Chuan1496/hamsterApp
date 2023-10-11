import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class behaviorPage extends StatelessWidget {
  const behaviorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Behavior'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20,
            height: 1, fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Container(
              width: 380,
              height: 260,
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:motionSection(context),
            ),
            Container(
              width: 380,
              height: 260,
              margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:workoutSection(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget motionSection(BuildContext context) {
  final List<chartPoint> points  = [
    chartPoint(x:0, y:9),
    chartPoint(x:1, y:6),
    chartPoint(x:2, y:3),
    chartPoint(x:3, y:1),
    chartPoint(x:4, y:0),
    chartPoint(x:5, y:1),
    chartPoint(x:6, y:1),
    chartPoint(x:7, y:3),
    chartPoint(x:8, y:4),
    chartPoint(x:9, y:1),
    chartPoint(x:10, y:0),
    chartPoint(x:11, y:1),
    chartPoint(x:12, y:0),
    chartPoint(x:13, y:1),
    chartPoint(x:14, y:1),
    chartPoint(x:15, y:1),
    chartPoint(x:16, y:0),
    chartPoint(x:17, y:1),
    chartPoint(x:18, y:0),
    chartPoint(x:19, y:2),
    chartPoint(x:20, y:4),
    chartPoint(x:21, y:5),
    chartPoint(x:22, y:7),
    chartPoint(x:23, y:8),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Text("Motion",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Text("Active Now",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.green,
              )
            ),
          ),
          Container(
            width: 73,
            height: 20,
            margin: const EdgeInsets.only(left: 110),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(
                  Icons.calendar_month_outlined,
                  size: 18,
                  color: Colors.black,
                ),
                Text(
                  'Day',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 18,
                  color: Colors.black,
                ),
              ]
            ),
          ),
        ],
      ),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text("Your hamster is active for 6.2 hours per day over the last 7 days.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ),
      Container(
        height: 190,
        padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
        child: LineChart(
          LineChartData(
            lineBarsData: _chartGroupsM(points),
            borderData: FlBorderData(
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitlesM),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget workoutSection(BuildContext context) {
  final List<chartPoint> points  = [
    chartPoint(x:0, y:4.20),
    chartPoint(x:1, y:4.93),
    chartPoint(x:2, y:3.20),
    chartPoint(x:3, y:5.71),
    chartPoint(x:4, y:4.72),
    chartPoint(x:5, y:3.10),
    chartPoint(x:6, y:3.58),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Text("Workout",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Text("Not Running",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[500],
                )
            ),
          ),
          Container(
            width: 73,
            height: 20,
            margin: const EdgeInsets.only(left:95),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                  Text(
                    'Week',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 18,
                    color: Colors.black,
                  ),
                ]
            ),
          ),
        ],
      ),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text("Your hamster ran average 4,206 meters a day over the last 7 days.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ),
      Container(
        height: 190,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: BarChart(
          BarChartData(
            barGroups: _chartGroupsW(points),
            borderData: FlBorderData(
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitlesW),
              leftTitles: AxisTitles(sideTitles: _leftTitlesW),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
        ),
      ),
    ],
  );
}

List<LineChartBarData> _chartGroupsM(List<chartPoint> points) {
  final _lineBarsData = [
    LineChartBarData(
        spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
        isCurved: true,
        dotData: FlDotData(
          show: false,
        ),
        color: Colors.lightBlue
    )
  ];
  return _lineBarsData;
}

List<BarChartGroupData> _chartGroupsW(List<chartPoint> points) {
  return points.map((point) =>
      BarChartGroupData(
          x: point.x.toInt(),
          barRods: [
            BarChartRodData(
              toY: point.y,
              color: Colors.lightBlue,
              width: 8,
            )
          ]
      )
  ).toList();
}

SideTitles get _bottomTitlesM => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 0:
        text = '12 am';
        break;
      case 6:
        text = '6 am';
        break;
      case 12:
        text = '12 pm';
        break;
      case 18:
        text = '6 pm';
        break;
    }
    return Text(text,
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
        )
    );
  },
);

SideTitles get _bottomTitlesW => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 0:
        text = 'Tue';
        break;
      case 1:
        text = 'Wed';
        break;
      case 2:
        text = 'Thu';
        break;
      case 3:
        text = 'Fri';
        break;
      case 4:
        text = 'Sat';
        break;
      case 5:
        text = 'Sun';
        break;
      case 6:
        text = 'Mon';
        break;
    }
    return Text(text);
  },
);

SideTitles get _leftTitlesW => SideTitles(
  showTitles: true,
  reservedSize: 35,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 0:
        text = '0 km';
        break;
      case 1:
        text = '1 km';
        break;
      case 2:
        text = '2 km';
        break;
      case 3:
        text = '3 km';
        break;
      case 4:
        text = '4 km';
        break;
      case 5:
        text = '5 km';
        break;
      case 6:
        text = '6 km';
        break;
    }
    return Text(text);
  },
);

class chartPoint {
  double x;
  double y;

  chartPoint({
    required this.x,
    required this.y,
  });
}