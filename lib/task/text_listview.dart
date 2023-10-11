import 'package:flutter/material.dart';


class TextListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/sale.png')),
                SizedBox(width: 8.0),
                Text('Extra XX% OFF this item with code EXTRA10',
                style: TextStyle(
                color: Colors.red)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/tabby.png')),
                SizedBox(width: 8.0),
                Text('X interest-free installments of AED XXX.XX '),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/tamara.png')),
                SizedBox(width: 8.0),
                Text('X interest-free installments of AED XXX.XX '),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
            child: const Row(
              children: [
                Image(image: AssetImage('assets/amber.png')),
                SizedBox(width: 8.0),
                Text('Earn 800 Amber points '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
