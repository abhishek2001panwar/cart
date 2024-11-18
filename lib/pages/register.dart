import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gruupe'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      print('Password visibility toggled');
                    }, // Implement password visibility toggle
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      print('Password visibility toggled');
                    }, // Implement password visibility toggle
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Log In.'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Center(child: Text('or')),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Image(
                  image: AssetImage(
                    'assets/images/icon.png',
                  ),
                  height: 28,
                ),
                label: const Text('Continue With Google'),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                icon: const Image(
                  image: AssetImage(
                    'assets/images/github.png',
                  ),
                  height: 28,
                ),
                label: const Text('Continue With GitHub'),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/landing');
                    },
                    child: Text('Home'),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/explore');
                    },
                    child: Text('Explore'),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/community');
                    },
                    child: Text('community'),
                  ),
                   SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/event');
                    },
                    child: Text('eventpage'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
