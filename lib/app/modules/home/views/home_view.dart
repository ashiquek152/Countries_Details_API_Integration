import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shahid_machine_test/app/data/api.services.dart';
import 'package:shahid_machine_test/app/data/location.model.dart';
import 'package:shahid_machine_test/app/modules/country.details/views/country_details_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: FutureBuilder<List<LocationModel>>(
            future: Constants.getAllLocations(),
            builder: (context, snapshot) {
              _homeController.locationsList = snapshot.data ?? [];
              // log(snapshot.data.toString());
              return ListView.builder(
                itemCount: _homeController.locationsList.length,
                itemBuilder: (context, index) {
                  final data = _homeController.locationsList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ListTile(
                        tileColor: index.isEven ? Colors.red : Colors.grey,
                        title: Text(data.name.common.toString()),
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 50,
                            child: Text(data.flag ?? ""),
                          ),
                        ),
                        onTap: () => gotoDetailsPage(data),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  gotoDetailsPage(data) async {
    String countryName = data.name.common.toLowerCase().toString();
    await Constants.getCountryDetails(countryName);
    Get.to(const CountryDetailsView());
  }
}
