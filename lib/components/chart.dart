import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.transparent,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 20,
            barTouchData: BarTouchData(
              enabled: false,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipPadding: const EdgeInsets.all(0),
                tooltipMargin: 8,
                getTooltipItem: (
                  BarChartGroupData group,
                  int groupIndex,
                  BarChartRodData rod,
                  int rodIndex,
                ) {
                  return BarTooltipItem(
                    rod.y.round().toString(),
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (value) => const TextStyle(
                    color: Color(0xFF424649),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                margin: 20,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return 'D';
                    case 1:
                      return 'W';
                    case 2:
                      return 'M';
                    case 3:
                      return '3M';
                    case 4:
                      return '6M';
                    case 5:
                      return 'All';
                    default:
                      return '';
                  }
                },
              ),
              leftTitles: SideTitles(showTitles: false),
            ),
            borderData: FlBorderData(
              show: false,
            ),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(y: 10, colors: [Color(0xFF424649)])
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(y: 8, colors: [Color(0xFF424649)])
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(y: 14, colors: [Color(0xFF424649)])
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(y: 18, colors: [Color(0xFF2fcba8)])
                ],
              ),
              BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(y: 14, colors: [Color(0xFF424649)])
                ],
              ),
              BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(y: 5, colors: [Color(0xFF424649)])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
