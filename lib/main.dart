import 'package:app_test/EditProfileScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePgae(),
    );
  }
}

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  String fullName = "أنس الجهني";
  String email = "anas@gmail.com";
  String phone = "05999999999";
  String address = "المدينة";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 94, 120),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[800],
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                fullName,
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                email,
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfileScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Edit profile",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _itemProfile("Name", fullName, Icons.person),
              _itemProfile("Phone", phone, Icons.phone),
              _itemProfile("Address", address, Icons.location_on),
              _itemProfile("Email", email, Icons.email),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                label: const Text(
                  "logout",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _itemProfile(String title, String subtitle, IconData IconData) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(fontSize: 20, color: Colors.yellow),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(fontSize: 20, color: Colors.white),
    ),
    leading: Icon(
      IconData,
      color: Colors.yellow,
      size: 28,
    ),
  );
}

