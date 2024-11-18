

// homepage/landing page for gruppe
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
            const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('K',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Search functionality
            },
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
                const  SizedBox(height: 10), 

                
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, 
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10), 
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.grey[300],
                              ),
                        const      SizedBox(height: 4),
                              Text('User $index', style:const TextStyle(fontSize: 12)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  // Post section
                  Column(
                    children: [
                      _buildPostCard(),
                      const SizedBox(height: 20),
                      _buildPostCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
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
              onTap: (index) {
                // Handle navigation on tap
              },
            ),
          ),
        ],
      ),
    );
  }

  // Method to build individual post cards
  Widget _buildPostCard() {
    return Card(
      elevation: 2,
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
              title: Text('User 1'),
              subtitle: Text('2 hours ago'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // More options
                },
              ),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/test.png',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover),
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Like post
                  },
                ),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () {
                    // Comment on post
                  },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Share post
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {
                    // Save post
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Liked by User 2 and 100 others'),
            SizedBox(height: 5),
            Text('View all 10 comments'),
            SizedBox(height: 5),
            Text('User 1: Caption 1'),
          ],
        ),
      ),
    );
  }
}
