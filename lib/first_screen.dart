import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          color: Colors.deepOrange,
        ),
        title: const Text(
          'First App',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.deepOrange,
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/Abdo.JPG'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abdullah Elmansy',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InfoPerson(
              icon: Icons.facebook,
              iconColor: Colors.blue,
            ),
            SizedBox(
              height: 15,
            ),
            InfoPerson(icon: Icons.camera_enhance, iconColor: Colors.red),
            SizedBox(
              height: 15,
            ),
            InfoPerson(icon: Icons.snapchat, iconColor: Colors.yellow),
            SizedBox(
              height: 15,
            ),
            InfoPerson(icon: Icons.telegram, iconColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class InfoPerson extends StatelessWidget {
  const InfoPerson({
    super.key,
    required this.icon,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const Text(
          '@abdullahelmansy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ],
    );
  }
}
