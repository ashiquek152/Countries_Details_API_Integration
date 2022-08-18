import 'package:get/get.dart';

import '../modules/country.details/bindings/country_details_binding.dart';
import '../modules/country.details/views/country_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUNTRY_DETAILS,
      page: () => const CountryDetailsView(),
      binding: CountryDetailsBinding(),
    ),
  ];
}
