import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("CraftyBay"),
      ),

      body: ListView(

        children: [

          const SizedBox(height: 10),

          Container(
            height: 180,
            color: Colors.grey.shade200,
            child: const Center(
              child: Text("Slider Here"),
            ),
          ),

          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "All Categories",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {

              return Column(
                children: const [
                  Icon(Icons.category),
                  SizedBox(height: 4),
                  Text("Category")
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}