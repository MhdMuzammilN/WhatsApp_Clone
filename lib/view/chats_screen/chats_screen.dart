import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({
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
      trailing: const Column(
        children: [
          Text(
            "10:25 am",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
