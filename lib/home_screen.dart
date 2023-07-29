import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Whatsapp"),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            )
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_horiz_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(
                        value: 1,
                        child: Text("New Group"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("Setting"),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text("Log out"),
                      )
                    ]),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(children: [
          Text("Camera"),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/4450359/pexels-photo-4450359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: Text("Haier alley"),
                  subtitle: Text("Where is my dog"),
                  trailing: Text("6:36pm"),
                );
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Update"),
                        ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/4450359/pexels-photo-4450359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              ),
                            ),
                            title: Text("Haier alley"),
                            subtitle: Text("35m ago")),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/4450359/pexels-photo-4450359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                      ),
                      title: Text("Haier alley"),
                      subtitle: Text("35m ago"));
                }
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/4450359/pexels-photo-4450359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("Haier alley"),
                    subtitle: Text(index / 2 == 0
                        ? "You misses audio call"
                        : "call times is 12:23"),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call));
              }),
        ]),
      ),
    );
  }
}
