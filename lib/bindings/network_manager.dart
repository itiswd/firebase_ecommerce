import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_ecommerce/utils/popups/loaders.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  // Initialization
  @override
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // Update Connection Status
  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    _connectionStatus = result;
    if (_connectionStatus == [ConnectivityResult.none]) {
      TLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  // Result
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != [ConnectivityResult.none];
    } on PlatformException catch (_) {
      // Handle the exception (e.g., log or show an error message)
      return false;
    }
  }

  // Dispose
  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
