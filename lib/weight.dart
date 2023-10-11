import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class weightPage extends StatelessWidget {
  const weightPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight'),
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
              height: 130,
              margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                /*border: Border.all(
                  color: Colors.grey,
                ),*/
                borderRadius: BorderRadius.circular(10),
              ),
              child:titleSection(context),
            ),
            Container(
              width: 380,
              height: 260,
              margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:chartSection(context),
            ),
          ],
        ),
      ),
    );
  }
}
Widget titleSection(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: SizedBox(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.yellow[700],
              onPressed: () {},
              child: Icon(
                Icons.monitor_weight,
                size: 45,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 45, 0, 0),
            child: Text("Current Weight",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text("     121 g",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Icon(
          Icons.arrow_drop_down,
          size: 18,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Text("-1.3%",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.green,
          ),
        ),
      ),
    ],
  );
}

Widget chartSection(BuildContext context) {
  final List<chartPoint> points  = [
    chartPoint(x:0, y:120.0),
    chartPoint(x:1, y:120.3),
    chartPoint(x:2, y:121.7),
    chartPoint(x:3, y:121.5),
    chartPoint(x:4, y:121.9),
    chartPoint(x:5, y:122.2),
    chartPoint(x:6, y:122.5),
    chartPoint(x:7, y:122.6),
    chartPoint(x:8, y:121.0),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Text("Weight",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )
            ),
          ),
          Container(
            width: 73,
            height: 20,
            margin: const EdgeInsets.only(left: 200),
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
        child: Text("Your hamster's weight has decreased by 1.3% from last week.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ),
      Container(
        height: 190,
        padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
        child: LineChart(
          LineChartData(
            lineBarsData: _chartGroupsM(points),
            borderData: FlBorderData(
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitles),
              leftTitles: AxisTitles(sideTitles: _leftTitles),
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

SideTitles get _bottomTitles => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 1:
        text = '03/05';
        break;
      case 2:
        text = '03/12';
        break;
      case 3:
        text = '03/19';
        break;
      case 4:
        text = '03/26';
        break;
      case 5:
        text = '04/02';
        break;
      case 6:
        text = '04/09';
        break;
      case 7:
        text = '04/16';
        break;
      case 8:
        text = '04/23';
        break;
    }
    return Text(text,
        style: TextStyle(
          fontSize: 11,
          color: Colors.black,
        )
    );
  },
);

SideTitles get _leftTitles => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 120:
        text = '120g';
        break;
      case 121:
        text = '121g';
        break;
      case 122:
        text = '122g';
        break;
      case 123:
        text = '123g';
        break;
    }
    return Text(text,
        style: TextStyle(
          fontSize: 7,
          color: Colors.black,
        )
    );
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