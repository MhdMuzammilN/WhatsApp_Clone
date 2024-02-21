import 'package:flutter/material.dart';

import 'package:flutter_application_1/view/home_screen/whatsapp_tabs/chats_tab.dart';

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
            titleTextStyle: const TextStyle(
              fontSize: 20,
            ),
            actions: const [
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(
                width: 8,
              ),
            ],
            bottom: const TabBar(
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 5,
                dividerHeight: 0,
                tabs: [
                  Tab(
                    icon: SizedBox(
                      width: 31,
                      child: Icon(
                        Icons.groups_3_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    child: Text(
                      "Updates",
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
          body: const TabBarView(children: [
            ChatsTab(),
            ChatsTab(),
            ChatsTab(),
            ChatsTab(),
          ]),
        ));
  }
}
