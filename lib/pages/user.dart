
//user profile page code

import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Image.asset('assets/images/Grupe.jpg',
                height: 30), 
            const Spacer(),
            const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Text('K', style: TextStyle(color: Colors.white , fontSize: 10 , fontWeight: FontWeight.normal)),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover Image and Profile Section
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], 
                  borderRadius: BorderRadius.circular(50), 
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: Colors.grey[700]), 
                    fillColor: Colors.transparent,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 20.0), 
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0), 
                      child: Icon(Icons.search,
                          color: Colors.grey[700]), 
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none, 
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/test.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 250),
                const Positioned(
                  bottom: 3,
                  left: 20,
                  child: Row(
                    children: [
                      // Profile Image
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'assets/images/tejus.png'), 
                      ),
                      SizedBox(
                          width:
                              10), 
                      // Name and Button
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile Name
                          SizedBox(
                              height: 10), 
                          Text(
                            'Vistar.tech',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                              height: 5), 
                          // Follow Button

                          Row(
                            children: [
                              Text(
                                'Followers: 1000',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                               SizedBox(width: 10),
                              Icon(
                                Icons.verified,
                                color: Colors.deepPurple,
                              ),
                                SizedBox(width: 10),
                              Icon(
                                Icons.edit,
                                color: Colors.deepPurple,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Buttons for Share and Join
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 3.0, horizontal: 49.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Share functionality
                    },
                    child: const Text('Share'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Join functionality
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: const Text(
                      'Join +',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // TabBar Section
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.purple,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: 'About'),
                Tab(text: 'Events'),
                Tab(text: 'Members'),
              ],
            ),

            // TabBarView Section
            SizedBox(
              height: 300, 
              child: TabBarView(
                controller: _tabController,
                children: [
                  // About Content
                 const SingleChildScrollView(
                    child:  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('About'),
                            subtitle: Text(
                                'This is a community for developers to learn and grow together.'),
                          ),
                          ListTile(
                            title: Text('Location'),
                            subtitle: Text('miet.ac.in'),
                          ),
                          ListTile(
                            title: Text('Members'),
                            subtitle: Text('1000'),
                          ),
                          ListTile(
                            title: Text('Events'),
                            subtitle: Text('10'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Events Content
                  ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      ListTile(
                        title: const Text('Google DevFest - 2.0'),
                        subtitle: const Text('Completed\nJoined Members - 69'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Join event
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Join +',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text('Flutter Engage'),
                        subtitle: const Text('Ongoing\nJoined Members - 150'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Join event
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Join +',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text('Flutter Engage'),
                        subtitle: const Text('Ongoing\nJoined Members - 150'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Join event
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Join +',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text('Flutter Engage'),
                        subtitle: const Text('Ongoing\nJoined Members - 150'),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Join event
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Join +',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Members Content

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 213, 213, 213)),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 219, 219, 219)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/tejus.png'),
                          ),
                          title: const Text('Member 1'),
                          subtitle: const Text('Tagline for the member'),
                          trailing: ElevatedButton(
                            onPressed: () {
                             
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              elevation: 5, 
                            ),
                            child: const Text(
                              ' +',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                       Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 213, 213, 213)),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 219, 219, 219)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/tejus.png'),
                          ),
                          title: const Text('Member 1'),
                          subtitle: const Text('Tagline for the member'),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Join event
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              elevation: 5, 
                            ),
                            child: const Text(
                              ' +',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
        },
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
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}


