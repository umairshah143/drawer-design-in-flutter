import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.home),
          )
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                DrawerProfile(),
                DrawerItems(
                  text: 'Home',
                  iconType: Icons.home,
                ),
                DrawerItems(
                  text: 'Dashboard',
                  iconType: Icons.dashboard,
                ),
                DrawerItems(
                  text: 'Blog',
                  iconType: Icons.post_add_outlined,
                ),
                DrawerItems(
                  text: 'Contact',
                  iconType: Icons.contact_page,
                ),
                DrawerItems(
                  text: 'Profile',
                  iconType: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }

  Widget DrawerProfile() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.orange,
            Colors.orangeAccent,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile.jpg'),
              ),
            ),
          ),
          const Text(
            'Code Pie',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget DrawerItems({
    required String text,
    required IconData iconType,
  }) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(
            top: 15,
            bottom: 15,
          ),
          child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Icon(
                      iconType,
                      size: 24,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
