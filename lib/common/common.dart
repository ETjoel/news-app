import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

Future<bool> getInternetStatus() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  if (!kIsWeb) {
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
  return true;
}
