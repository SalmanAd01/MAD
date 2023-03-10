import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Dashboard.dart';
import 'package:flutter_application_1/Screen/Home.dart';
import 'package:flutter_application_1/Screen/Profile.dart';

class Layout extends StatefulWidget {
  final Widget child;
  const Layout({Key? key, required this.child}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    switch (_selectedIndex) {
      case 1:
        return const Dashboard();
      case 3:
        return const Profile();
    }
    return Scaffold(
      key: _key,
      drawer: new Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 116, 61),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 243, 116, 61)),
                accountName: Text(
                  "Salman Adhikari",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("adhikarijit120@gst.sies.edu.in"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 0,
        title: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hello,Nacy Liu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Good morning',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.notification_add_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () => {_key.currentState!.openDrawer(), print("jo")},
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://blog.readyplayer.me/content/images/2022/10/rainer.jpeg",
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        onTap: (value) => {
          setState(() {
            _selectedIndex = value;
          })
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
