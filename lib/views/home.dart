import 'package:flutter/material.dart';
import '../utils/colors/materialcolors.dart';
import 'chooseship/step1.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.42 / 1,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.93 / 1,
                    height: MediaQuery.of(context).size.height * 0.35 / 1,
                    decoration: BoxDecoration(
                      color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                      // border:
                      //     Border.all(width: 2, color: MaterialColors.primaryColor),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Performance',
                          style: TextStyle(
                              color: Colors.grey.shade600.withOpacity(0.8),
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3 / 1,
                          child: LineChart(
                            LineChartData(
                              // showingTooltipIndicators: [
                              //   ShowingTooltipIndicators([
                              //     LineBarSpot(
                              //         bar: LineChartBarData(
                              //             color: MaterialColors.primaryColor,
                              //             isStepLineChart: false)),
                              //   ]),
                              // ],
                              titlesData: const FlTitlesData(
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: true),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: true),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              gridData: const FlGridData(
                                show: true, // Hide grid lines
                              ),
                              minX: 0,
                              maxX: 5,
                              minY: 0,
                              maxY: 6,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 3),
                                    const FlSpot(1, 1),
                                    const FlSpot(2, 4),
                                    const FlSpot(3, 2),
                                    const FlSpot(4, 5),
                                    const FlSpot(5, 3),
                                  ],
                                  shadow: const Shadow(
                                      color: Colors.black54,
                                      blurRadius: 5,
                                      offset: Offset(1, 1)),
                                  isCurved: true,
                                  barWidth: 8,
                                  color: MaterialColors.primaryColor,
                                  dotData: const FlDotData(show: false),
                                ),
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 2),
                                    const FlSpot(1, 3),
                                    const FlSpot(2, 1),
                                    const FlSpot(3, 4),
                                    const FlSpot(4, 2),
                                    const FlSpot(5, 5),
                                  ],
                                  barWidth: 8,
                                  isCurved: true,
                                  shadow: const Shadow(
                                      color: Colors.black54,
                                      blurRadius: 5,
                                      offset: Offset(1, 1)),
                                  color: MaterialColors.primaryColor[100],
                                  dotData: const FlDotData(
                                    show: true,
                                  ),
                                ),
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 3),
                                    const FlSpot(1, 4),
                                    const FlSpot(2, 5),
                                    const FlSpot(3, 5),
                                    const FlSpot(4, 6),
                                    const FlSpot(5, 6),
                                  ],
                                  shadow: const Shadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      offset: Offset(1, 1)),
                                  // isCurved: true,
                                  barWidth: 8,
                                  color: MaterialColors.primaryColor[200],
                                  dotData: const FlDotData(show: true),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.82 / 1,
                        height: MediaQuery.of(context).size.height * 0.11 / 1,
                        decoration: BoxDecoration(
                          color: MaterialColors.primaryColor[500]!
                              .withOpacity(0.9),
                          borderRadius: BorderRadius.circular(15),
                          // border:
                          //     Border.all(width: 2, color: MaterialColors.primaryColor),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('100',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Colors.white,
                                            )),
                                    Text('Listed',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: Colors.grey.shade200
                                                  .withOpacity(0.8),
                                            )),
                                  ],
                                ),
                                Text(
                                  ' | ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: Colors.grey.shade200
                                            .withOpacity(0.8),
                                      ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('10',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Colors.white,
                                            )),
                                    Text('Pending',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: Colors.grey.shade200
                                                  .withOpacity(0.8),
                                            )),
                                  ],
                                ),
                                Text(
                                  ' | ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: Colors.grey.shade200
                                            .withOpacity(0.8),
                                      ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('90',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Colors.white,
                                            )),
                                    Text('Delivered',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: Colors.grey.shade200
                                                  .withOpacity(0.8),
                                            )),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => Step1(),
          //         ),
          //       );
          //     },
          //     child: Container(
          //       width: MediaQuery.of(context).size.width * 0.93 / 1,
          //       decoration: BoxDecoration(
          //         color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
          //         borderRadius: BorderRadius.circular(15),
          //         // border:
          //         //     Border.all(width: 2, color: MaterialColors.primaryColor),
          //       ),
          //       child: const Padding(
          //           padding: EdgeInsets.all(4.0),
          //           child: Center(
          //             child: Text(
          //               'Analytics reports',
          //               style: TextStyle(color: MaterialColors.primaryColor),
          //             ),
          //           )),
          //     ),
          //   ),
          // ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Step1(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 2, color: MaterialColors.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: MaterialColors.primaryColor[100],
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.playlist_add),
                      ),
                    ),
                    title: const Text('New Packages Listing'),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: MaterialColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: MaterialColors.primaryColor[100]!.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
                // border: Border.all(
                // width: 1, color: MaterialColors.primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: MaterialColors.primaryColor[100],
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.watch_later_outlined),
                    ),
                  ),
                  title: const Text('Shipments History'),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
