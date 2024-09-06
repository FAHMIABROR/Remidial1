import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the entire row
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Orange',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5), // Space between text lines
                    Text(
                      '1000 ready stock',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5), // Space between text lines
                    Text(
                      '\$15',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.favorite_border), 
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
