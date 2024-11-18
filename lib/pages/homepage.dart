import 'package:cart/pages/shoppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePageDemo());
}

class HomePageDemo extends StatelessWidget {
  const HomePageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image.asset(
                'assets/images/niket.png',
                height: 200,
                width: 200,
              ),

              const SizedBox(height: 40),

              // Text
              const Text(
                'Just Do It',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),

              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Brand New Shoes Available at discounted price',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 20),
              // Button
              GestureDetector(

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShopPageDemo(),
                    ),
                  );
                },
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
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
