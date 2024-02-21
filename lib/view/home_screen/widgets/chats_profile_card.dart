import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/dummy_db.dart';

class ChatsProfileCard extends StatelessWidget {
  const ChatsProfileCard({super.key, required this.contactIndex});

  final int contactIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Container(
        padding: const EdgeInsets.only(bottom: 4),
        child: Row(
          children: [
            CircleAvatar(
              radius: 33,
              backgroundImage: AssetImage(DummyDB.contactsList[contactIndex]
                      ["profileAvatar"]
                  .toString()),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DummyDB.contactsList[contactIndex]["profileName"],
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  DummyDB.contactsList[contactIndex]["lastMessage"],
                  style: const TextStyle(fontSize: 13),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  DummyDB.contactsList[contactIndex]["messageTime"],
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 2,
                ),
                CircleAvatar(
                  radius: 11,
                  backgroundColor: const Color(0xff02B099),
                  child: Center(
                    child: Text(
                      DummyDB.contactsList[contactIndex]["messageCounter"],
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
