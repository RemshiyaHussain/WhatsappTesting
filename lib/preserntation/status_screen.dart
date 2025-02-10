import 'package:flutter/material.dart';
import 'package:whatsapp/assets/asset_resources.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  final List<Statuschat> status = [
    Statuschat(
      image: AssetResources.baby,
      name: "anu",
      time: "10.06 am",
    ),
    Statuschat(
      image:AssetResources.beauty,
      name: "razu",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.cat,
      name: "shezi",
      time: "10.06 am",
    ),
    Statuschat(
      image:AssetResources.download,
      name: "adu",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.withPet,
      name: "anzi",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.friend,
      name: "bro",
      time: "10.06 am",
    ),
    Statuschat(
      image:AssetResources.girl,
      name: "siss",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.flower,
      name: "friend",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.r,
      name: "dad",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.thulip,
      name: "mom",
      time: "10.06 am",
    ),
    Statuschat(
      image: AssetResources.selfiWithFriends,
      name: "minu",
      time: "10.06 am",
    ),
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Update",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 8),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("search pressed");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    print("menu pressed");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "status",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  foregroundColor: Colors.blueAccent,
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage(
                  AssetResources.sunflower
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      minRadius: 10,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            title: Text("My status"),
            subtitle: Text("tap to add status update"),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: status.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 4.0)),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          status[index].image,
                        ),
                        minRadius: 20,
                      ),
                    ),
                    title: Text(status[index].name),
                    subtitle: Text(status[index].time),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(" on pressed");
        },
        child: Icon(Icons.photo_camera),
      ),
    );
  }
}

class Statuschat {
  String image;
  String name;
  String time;

  Statuschat({required this.image, required this.name, required this.time});
}
