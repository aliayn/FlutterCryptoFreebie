import 'package:crypto_freebie/models/graph/graph/graph.dart';
import 'package:crypto_freebie/models/markets/pair/pair.dart';
import 'package:crypto_freebie/models/pair/pair_summary/pair_summary.dart';
import 'package:crypto_freebie/routes/routes.dart';
import 'package:get/get.dart';

goToDetailPage({required Pair pair,required PairSummary summary, Graph? graph}) =>
    Get.toNamed(Routes.detail, arguments: [pair, summary, graph]);
