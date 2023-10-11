import 'package:flutter/material.dart';


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
