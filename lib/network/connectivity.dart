// ignore_for_file: unrelated_type_equality_checks

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivity {
  final Connectivity _connectivity = Connectivity();

  Future<bool> isNetworkAvailable() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Future<bool> isConnectedToWiFi() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult == ConnectivityResult.wifi;
  }
}
