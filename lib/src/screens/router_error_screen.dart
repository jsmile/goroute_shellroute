import 'package:flutter/material.dart';

class RouterErrorScreen extends StatelessWidget {
  final String errorMsg;
  const RouterErrorScreen({
    Key? key,
    required this.errorMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              errorMsg,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
