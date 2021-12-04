import 'package:flutter/material.dart';

import 'connectivity.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ConnectivityWidget.of(context).result.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
