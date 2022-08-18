import 'package:get/get.dart';

import '../controllers/country_details_controller.dart';

class CountryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryDetailsController>(
      () => CountryDetailsController(),
    );
  }
}
