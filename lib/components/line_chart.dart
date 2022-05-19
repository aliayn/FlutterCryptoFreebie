import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

import '../locale/locale_keys.dart';
import '../utils/utils.dart';

Widget lineChartWidget(
    {final List<double> data = const [],
    final Color color = const Color(0xff02d39a),
    final bool loading = false,
    final bool error = false,
    final bool expand = false}) {
  return Builder(
      builder: (context) =>
          Stack(alignment: AlignmentDirectional.center, children: [
            Opacity(
              opacity: data.isNotEmpty && !loading & !error ? 1 : 0.3,
              child: SizedBox(
                width: double.infinity,
                child: LineChart(
                  mainData(
                      data.isNotEmpty && !loading & !error
                          ? data
                          : demoGraphData,
                      color,
                      expand),
                  swapAnimationDuration: const Duration(seconds: 0),
                ),
              ),
            ),
            if (loading)
              const Center(
                child: CircularProgressIndicator(),
              )
            else if (error || data.isEmpty)
              Center(
                child: Text(LocaleKeys.noResults.tr,
                    style: Theme.of(context).textTheme.headline3),
              )
          ]));
}

LineChartData mainData(List<double> data, Color color, bool expand) =>
    LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: false,
        horizontalInterval: 4,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: data.length.toDouble() - 1,
      minY: data.reduce(min).toDouble(),
      maxY: data.reduce(max).toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: listData(data),
          colors: [color],
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: expand,
            gradientFrom: const Offset(0, .9),
            gradientTo: const Offset(0, 0.5),
            colors: [color.withOpacity(.01), color.withOpacity(.3)],
          ),
        ),
      ],
    );

List<FlSpot> listData(List<double> data) {
  return data.mapIndexed((e, i) => FlSpot(i.toDouble(), e.toDouble())).toList();
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
