import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Red',
          style: TextStyle(
            fontSize: 48,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
