import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "ESA",
          style: TextStyle(
            color: Colors.red[500],
          ),
        ),
      ),
    );
  }
}
