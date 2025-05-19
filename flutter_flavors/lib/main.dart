import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Blue',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),
        useMaterial3: true,
      ),
      home: const InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatelessWidget {
  const InstagramHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 32,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 16),
          Icon(Icons.send),
          SizedBox(width: 12),
        ],
      ),
      body: ListView(
        children: [
          // Stories bar
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              itemCount: 8,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) => Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/avatar${index % 3 + 1}.jpg'),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('user$index', style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ),
          // Feed post (mock)
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar1.jpg'),
                  ),
                  title: const Text('user1', style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 300,
                  color: Colors.blue[100],
                  child: const Center(child: Icon(Icons.image, size: 100, color: Colors.blue)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: const [
                      Icon(Icons.favorite_border, size: 28),
                      SizedBox(width: 16),
                      Icon(Icons.chat_bubble_outline, size: 28),
                      SizedBox(width: 16),
                      Icon(Icons.send, size: 28),
                      Spacer(),
                      Icon(Icons.bookmark_border, size: 28),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('Curtido por user2 e outras pessoas', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text('user1 Uma foto azul incrível! #blue', style: TextStyle()),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}