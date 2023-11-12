import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Green',
          style: TextStyle(
            fontSize: 48,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
