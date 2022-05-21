import 'package:get/instance_manager.dart';

import '../components/ohlc_section.dart';
import '../components/order_book_section.dart';
import '../components/summary_section.dart';
import '../components/trades_section.dart';
import 'detail/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController());
    Get.create(() => SummarySectionController());
    Get.create(() => OHLCSectionController());
    Get.create(() => TradesSectionController());
    Get.create(() => OrderBookSectionController());
  }
}
