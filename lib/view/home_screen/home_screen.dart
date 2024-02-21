import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/chats_screen/chats_screen.dart';

class HomeScreenTabs extends StatelessWidget {
  const HomeScreenTabs({super.key});

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
                text: "Chats",
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
              ),
            ]),
          ),
          body: ChatScreen(),
        ));
  }
}
