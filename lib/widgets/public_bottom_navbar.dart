import 'package:flutter/material.dart';

class PublicBottomNav extends StatefulWidget {
  const PublicBottomNav({Key? key}) : super(key: key);

  @override
  _PublicBottomNavState createState() => _PublicBottomNavState();
}

class _PublicBottomNavState extends State<PublicBottomNav> {
  int _currentIndex = 1;
  final List<Widget> _pages = <Widget>[];

  @override
  void initState() {
    _pages.add(CategoryScreen());
    _pages.add(const HomeScreen());
    _pages.add(SettingScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 1.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Colors.blue,
                selectedItemColor: Colors.white,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/public_feed_outline.png"), size: 22,
                    ), 
                    label: ""
                  ),
                  BottomNavigationBarItem(icon: ImageIcon(
                      AssetImage("assets/images/Blue_Surgeon_S_Logo_Template.png"), size: 22,
                    ),
                    label: ""
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/notes_fill.png"), size: 22,
                    ),
                    label: ""
                  )
                ]),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Colors.blue : Colors.blueGrey,
          child: const Icon(Icons.home),
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Home')),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Category')),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Settings')),
    );
  }
}