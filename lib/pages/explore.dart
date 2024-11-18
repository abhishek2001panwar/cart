// Explore Section : whats hapeening in your communities

import 'package:flutter/material.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Image.asset('assets/images/Grupe.jpg', height: 30),
            const Spacer(),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add_outlined,
                color: Colors.black),
            onPressed: () {
              // Search functionality
            },
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('K',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal)),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Events, Communities, and more',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      fillColor: const Color.fromARGB(255, 226, 224, 224),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 20.0),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.search, color: Colors.grey[700]),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  // Post section
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Whats happening in your communities',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildPostCard(),
                      const SizedBox(height: 20),
                      _buildPostCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
        ],
        //active
        currentIndex: 2,
      ),
    );
  }
}

Widget _buildPostCard() {
  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
            ),
            title: const Text('NextFest'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 10),
          Image.asset('assets/images/test.png',
              height: 300, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          const Text('Headline'),
          const SizedBox(height: 5),
          const Text('About event'),
        ],
      ),
    ),
  );
}
