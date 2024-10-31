import 'package:flutter/material.dart';


class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 57, 94, 120),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 94, 120),
        title: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 26),),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){}, child: Text("Save")),
      ),
    );
  }
}