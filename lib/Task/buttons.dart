import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Row Example'),
        ),
        body: Center(
          child: ButtonRow(),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(96, 24),
              textStyle: TextStyle(fontSize: 12),
              backgroundColor: Colors.white70,
              foregroundColor: Colors.black,
              shadowColor: Colors.white,
            ),
            onPressed: () {},
            icon: Icon(Icons.fire_truck),
            label: Text('Home Delivery')),
        SizedBox(width: 16),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(96, 24),
              textStyle: TextStyle(fontSize: 12),
              backgroundColor: Colors.white70,
              foregroundColor: Colors.black,
              shadowColor: Colors.white,
            ),
            onPressed: () {},
            icon: Icon(Icons.clean_hands_sharp),
            label: Text('Click & Collect')),
      ],
    );
  }
}
