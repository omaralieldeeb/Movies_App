import 'package:flutter/material.dart';

class MeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B2F),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/Sample George.jpg'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Antonio Renders',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '@renders.antonio',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  buildMenuItem(Icons.person, 'My profile'),
                  buildMenuItem(Icons.notifications, 'Notifications'),
                  buildMenuItem(Icons.history, 'History'),
                  buildMenuItem(Icons.subscriptions, 'My Subscriptions'),
                  buildMenuItem(Icons.settings, 'Settings'),
                  buildMenuItem(Icons.help, 'Help'),
                  buildMenuItem(Icons.logout, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: () {
      },
    );
  }
}
