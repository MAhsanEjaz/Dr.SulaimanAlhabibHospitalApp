import 'package:flutter/cupertino.dart';

class PageNavigationService {
  pageNavigation(BuildContext context, Widget child) {
    Route route = PageRouteBuilder(
        opaque: false,
        fullscreenDialog: true,
        pageBuilder: (_, __, ___) {
          return child;
        });
    Navigator.of(context).push(route);
  }
}
