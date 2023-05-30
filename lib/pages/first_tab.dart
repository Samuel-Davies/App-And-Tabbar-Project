import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: Text(
          "SRC",
          style: TextStyle(
            color: Colors.red[500],
          ),
        ),
      ),
    );
  }
}
