import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Abdullah Elmansy',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'abdullahelmansy183@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'My Orders',
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'Edit Profile',
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'Reset Password',
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'FAQ',
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'Contact Us',
            ),
            const SizedBox(
              height: 10,
            ),
            const SettingInfo(
              title: 'Privacy & Terms',
            ),
          ],
        ),
      ),
    );
  }
}

class SettingInfo extends StatelessWidget {
  const SettingInfo({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(2, 4), blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 24,
              ))
        ],
      ),
    );
  }
}
