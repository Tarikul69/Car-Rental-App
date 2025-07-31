import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  // Define any variables or methods needed for the home controller
  // For example, you might want to manage the state of the home page
  var isLoading = true.obs;
  var cars = [].obs; // Observable list to hold car data

  @override
  void onInit() {
    super.onInit();
    // Initialize any data or state here
    fetchData();
  }

  void fetchData() async {
    // Simulate a network call or data fetching
    await Future.delayed(Duration(seconds: 2));
    isLoading.value = false;
  }
}
