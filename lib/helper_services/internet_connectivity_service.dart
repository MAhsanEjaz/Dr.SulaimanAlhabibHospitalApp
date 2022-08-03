import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectivityService {
  static Future<bool> internetConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else {
      return false;
    }
  }
}
