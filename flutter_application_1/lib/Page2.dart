import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text('Your Balance'),
            const Text(
              '1,700.00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), 
                          spreadRadius: 2, 
                          blurRadius: 5, 
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page3();
                }));
              },
              child: const Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
