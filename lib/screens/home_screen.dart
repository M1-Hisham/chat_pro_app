import 'package:chat_app/screens/chats_list_screen.dart';
import 'package:chat_app/screens/groups_screen.dart';
import 'package:flutter/material.dart';
import '../Theme/change_theme.dart';
import '../utilities/assets_manager.dart';
import 'peopel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  static int selectedIndex = 0;
  static const List<Widget> _pages = [
    CahtsListScreen(),
    GroupsScreen(),
    PepleScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("MH CHAT"),
        ),
        title: const ChangeTheme(),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                AssetsManager.userImage,
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "People",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
