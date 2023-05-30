import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "BSA",
          style: TextStyle(
            color: Colors.red[500],
          ),
        ),
      ),
    );
  }
}
