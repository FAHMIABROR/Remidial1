import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Page2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 580,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Complete your grocery need easily',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20), // Add spacing above the button
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page2();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button background color
                foregroundColor: Colors.white,  // Button text color
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // To make the button fit the content
                children: [
                  const Text('Get started'),
                  const SizedBox(width: 8), // Space between text and icon
                  const Icon(Icons.arrow_forward), // Arrow icon
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
