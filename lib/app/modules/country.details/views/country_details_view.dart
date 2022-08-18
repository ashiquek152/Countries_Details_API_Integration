import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/country_details_controller.dart';

class CountryDetailsView extends GetView<CountryDetailsController> {
  const CountryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountryDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CountryDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
