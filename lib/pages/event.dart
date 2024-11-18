//user profile page code

import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> with SingleTickerProviderStateMixin {
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
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 240, 239, 239),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Event name",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "This event is all about having breakfasat and in the dinner and having lunch in morning",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
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
                const SizedBox(
                  height: 20,
                ),
                const Positioned(
                  bottom: 3,
                  left: 20,
                  child: Row(
                    children: [
                      // Profile Image

                      SizedBox(width: 10),
                      // Name and Button
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile Name

                          SizedBox(height: 5),
                          // Follow Button
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
                Tab(text: 'Updates'),
                Tab(text: 'Details'),
                Tab(text: 'Timeline'),
                Tab(text: 'comments'),
              ],
            ),

            // TabBarView Section
            SizedBox(
              height: 300,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Update Content
                  const SingleChildScrollView(
                    child: Padding(
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

                  // Details Content
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

                  // Timeline Content

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
                              offset: const Offset(0, 3),
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
                            onPressed: () {},
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
                              offset: const Offset(0, 3),
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
                  //commment
                  
                 
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
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
