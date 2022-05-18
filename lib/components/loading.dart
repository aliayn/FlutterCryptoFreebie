// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

Widget loading() => Builder(
    builder: (context) => SpinKitFoldingCube(
          color: Theme.of(context).colorScheme.secondary,
        ));

Widget loadingPairTile() => ListTile(
      leading: const _LoadingPairTile.circular(height: 64, width: 64),
      title: Align(
        alignment: Alignment.centerLeft,
        child: _LoadingPairTile.rectangular(
          height: 16,
          width: 30.w,
        ),
      ),
      subtitle: const _LoadingPairTile.rectangular(height: 14),
    );

class _LoadingPairTile extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const _LoadingPairTile.rectangular(
      {this.width = double.infinity, required this.height})
      : shapeBorder = const RoundedRectangleBorder();

  const _LoadingPairTile.circular(
      {this.width = double.infinity, required this.height})
      : shapeBorder = const CircleBorder();

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey[600]!,
        highlightColor: Colors.grey[100]!,
        period: const Duration(seconds: 1),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.grey[400]!,
            shape: shapeBorder,
          ),
        ),
      );
}
