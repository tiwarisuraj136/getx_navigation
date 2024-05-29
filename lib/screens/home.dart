
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/second.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatelessWidget {
   Home({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();
   PersistentTabController controller = PersistentTabController(initialIndex: 0);

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Package | Home"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){
            scaffoldKey.currentState!.openDrawer;
          }, icon: const Icon(Icons.notification_important))
        ],
      ),
      // drawer: getAppDrawer(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Profile'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: closeDrawer,
            ),
            ListTile(
              title: const Text('second'),
              onTap: closeDrawer,
            ),
            ListTile(
              title: const Text('third'),
              onTap: closeDrawer,
            ),
            ListTile(
              title: const Text('fourth'),
              onTap: closeDrawer,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Go To Second"),
              onPressed: () => Get.to(const Second()),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: const Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}
