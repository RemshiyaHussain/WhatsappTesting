import 'package:flutter/material.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.groups_3,
            size: 100,
          ),
          Center(
              child: Text(
            "Stay connected with a community",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          )),
          Text(
            "communities bring members together in topic- based groups,and make it easy to get admin announcements. Any community you are added to will appear here. ",
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
