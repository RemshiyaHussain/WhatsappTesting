import 'package:flutter/material.dart';
import 'package:whatsapp/preserntation/call_screen.dart';
import 'package:whatsapp/preserntation/chat_screen.dart';
import 'package:whatsapp/preserntation/communities_screen.dart';
import 'package:whatsapp/preserntation/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _selectedIndex = 0;
  // final List<Widget> _pages = <Widget>[
  //   ChatScreen(),
  //   StatusScreen(),
  //   CommunitiesScreen(),
  //   CallScreen(),
  // ];

  // void _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CommunitiesScreen(),
            CallScreen(),
            // Center(
            //   child: _pages.elementAt(_selectedIndex),
            // ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.chat),
              child: Text("Chats"),
            ),
            Tab(icon: Icon(Icons.adjust), child: Text("Update")),
            Tab(
              icon: Icon(Icons.group),
              child: Text(
                "Communities",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
              ),
            ),
            Tab(
              icon: Icon(Icons.call),
              child: Text('call'),
            ),
          ],
          // currentIndex] ,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
        ),
      ),
    );
  }
}
