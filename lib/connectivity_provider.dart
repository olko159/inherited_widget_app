import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityWidget extends InheritedWidget {
  const ConnectivityWidget({
    Key? key,
    required this.result,
    required Widget child,
  }) : super(key: key, child: child);

  final ConnectivityResult result;

  static ConnectivityWidget of(BuildContext context) {
    final ConnectivityWidget? result =
        context.dependOnInheritedWidgetOfExactType<ConnectivityWidget>();
    return result!;
  }

  @override
  bool updateShouldNotify(ConnectivityWidget old) => result != old.result;
}
