import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Blue',
          style: TextStyle(
            fontSize: 48,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
