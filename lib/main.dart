import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: WhatsAppTabs()));
  }
}

class WhatsAppTabs extends StatelessWidget {
  const WhatsAppTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff075E54),
            title: const Text("WhatsApp"),
            titleTextStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            actions: const [
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(
                width: 15,
              ),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.groups_3_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Updates",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          ),
          body: ChatList(),
        ));
  }
}

class ChatList extends StatelessWidget {
  ChatList({
    super.key,
  });

  final List<String> profileNames = [
    "Ahnas",
    "Joel",
    "Bharad",
    "Asif",
    "Arun",
    "Fayyas",
    "Vaishnavi",
    "Mahadev",
    "Naomi",
    "Ahnas",
    "Joel",
    "Bharad",
    "Asif",
    "Arun",
    "Fayyas",
    "Vaishnavi",
    "Mahadev",
    "Naomi",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: profileNames.map((names) => Profiles(name: names)).toList(),
      ),
    );
  }
}

class Profiles extends StatelessWidget {
  const Profiles({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.group),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        "You have one new unread message",
      ),
      trailing: const Text(
        "10:25 am",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
