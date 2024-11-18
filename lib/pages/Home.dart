

//Starting Page which accepts the titlee as the parameter
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gruppe',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gruppe'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const SizedBox(
              height: 200,
            ),
                  const Image(
                    image: AssetImage('assets/images/Grupe.jpg', 

                    
                    ),
                    height: 70,
                    width: 70,
                  ),
            const Text(
              'Gruppe',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Where Networks Find Purpose',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 21, 20, 20),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  icon: const Icon(Icons.arrow_forward, color: Colors.deepPurple),
                  label: const Text('Get Started'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
