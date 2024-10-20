import 'package:flutter/material.dart';

class DownloadBody extends StatefulWidget {
  const DownloadBody({super.key});

  @override
  _DownloadBodyState createState() => _DownloadBodyState();
}

class _DownloadBodyState extends State<DownloadBody> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B2F),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Download',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTabButton('Downloaded', 0),
                buildTabButton('Downloading', 1),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  buildMovieCard(
                    'Captain America: The Winter Soldier',
                    'Action, Adventure',
                    'assets/image.jpg',
                    '2:05:32 | 1.20GB',
                  ),
                  buildMovieCard(
                    'Captain Marvel',
                    'Action, Adventure',
                    'assets/image.jpg',
                    '2:05:32 | 1.20GB',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabButton(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: selectedTab == index ? Colors.red : Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            if (selectedTab == index)
              Container(
                height: 2,
                width: 40,
                color: Colors.red,
              )
          ],
        ),
      ),
    );
  }


  Widget buildMovieCard(
      String title, String genre, String imagePath, String info) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color(0xFF2C2C34),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Text(
                genre,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 5),
              Text(
                info,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          trailing: const Icon(Icons.more_vert, color: Colors.white),
        ),
      ),
    );
  }
}
