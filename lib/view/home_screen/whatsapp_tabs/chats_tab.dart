import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/dummy_db.dart';
import 'package:flutter_application_1/view/home_screen/widgets/chats_profile_card.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      itemCount: DummyDB.contactsList.length,
      itemBuilder: (context, index) => ChatsProfileCard(contactIndex: index),
    );
  }
}
