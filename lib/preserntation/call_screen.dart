import 'package:flutter/material.dart';
import 'package:whatsapp/assets/asset_resources.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
    AppBar(
      title: Text(
        "Calls",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.0,
              children: [
                Text(
                  "favourites",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add favourite",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                Text(
                  "Recent",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("today  10.pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.baby),
                  ),
                  title: Text("anu"),
                  subtitle: Text("today  9.pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.beauty),
                  ),
                  title: Text("chechu"),
                  subtitle: Text("today  8.pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.download),
                  ),
                  title: Text("minu"),
                  subtitle: Text("today  10.00 am"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  10.00 pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  9.00 pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.download),
                  ),
                  title: Text("minu"),
                  subtitle: Text("today  10.00 am"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  10.00 pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  9.00 pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.withPet),
                  ),
                  title: Text("minu"),
                  subtitle: Text("today  10.00 am"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  10.00 pm"),
                  trailing: Icon(Icons.call),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetResources.cat),
                  ),
                  title: Text("shazi"),
                  subtitle: Text("yesturday  9.00 pm"),
                  trailing: Icon(Icons.call),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(" on pressed");
        },
        child: Icon(Icons.call),
      ),
    );
  }
}
