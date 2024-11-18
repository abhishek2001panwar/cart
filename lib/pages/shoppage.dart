import 'package:flutter/material.dart';

void main() {
  runApp(const ShopPageDemo());
}

class ShopPageDemo extends StatelessWidget {
  const ShopPageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Image.asset('assets/images/niket.png',
                  height: 100, width: 100),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text('Shop'),
              onTap: () {
                Navigator.pushNamed(context, '/shop');
              },
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () {
                Navigator.pushNamed(context, '/shop');
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/shop');
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                // Image
                Image.asset(
                  'assets/images/niket.png',
                  height: 100,
                  width: 200,
                ),
                const SizedBox(height: 40),

                // Text
                const Text(
                  'Featured Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Everyone flies ... some fly longer than others',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),

                // Horizontal scrolling for card containers
                SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Nike Air Max',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Image.network(
                                  'https://th.bing.com/th/id/OIP.hfM8IpjzetqJ2ekHCXUf5AHaHa?w=205&h=206&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                                  width: 200,
                                  height: 200),
                              const Text('Price: \$200',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                         Container(
                          height: 300,
                          width: 200,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Nike Air jorden',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Image.network(
                                  'https://th.bing.com/th/id/OIP.hfM8IpjzetqJ2ekHCXUf5AHaHa?w=205&h=206&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                                  width: 200,
                                  height: 200),
                              const Text('Price: \$200',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                         Container(
                          height: 300,
                          width: 200,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Nike Air Max 2',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Image.network(
                                  'https://th.bing.com/th/id/OIP.hfM8IpjzetqJ2ekHCXUf5AHaHa?w=205&h=206&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                                  width: 200,
                                  height: 200),
                              const Text('Price: \$200',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      
                       
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom Button
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
