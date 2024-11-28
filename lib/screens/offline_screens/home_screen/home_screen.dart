import 'package:dlcm_ghs/screens/offline_screens/hymn_home.dart/hymn_home.dart';
import 'package:dlcm_ghs/screens/online_screens/gs_messages_web_screen/messages_webview.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _pages = [];
  int _selectedIndex = 0;
  late Widget _currentPage;

  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
      _currentPage = _pages[_selectedIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    _pages..add(const HymnHome())..add(const MessagesWebview());
    _currentPage = const HymnHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _currentPage
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded, size: 20,),
            tooltip: 'Hymn Page',
            label: 'Hymn Page',
            activeIcon: Icon(Icons.book_outlined,size: 20,),
            backgroundColor: _selectedIndex == 0 ? PColor.primaryColor.withOpacity(0.6) : Get.isDarkMode ? PColor.dark : PColor.light
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline, size: 20,),
            tooltip: 'Online Resources',
            label: 'Online Resources',
            activeIcon: Icon(Icons.download_for_offline_outlined, ),
            backgroundColor: _selectedIndex == 1 ? PColor.primaryColor.withOpacity(0.6) : Get.isDarkMode ? PColor.dark : PColor.light
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (selectedIndex) => _onPageChanged(selectedIndex),
        iconSize: 25,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedIconTheme: IconThemeData(
          color: Get.isDarkMode ? PColor.light : PColor.dark
        ),
        unselectedIconTheme: IconThemeData(
          color: Get.isDarkMode ? PColor.darkGrey : PColor.lightGrey
        ),
        selectedLabelStyle: TextStyle(
          color: Get.isDarkMode ? PColor.light : PColor.dark
        ),
        unselectedLabelStyle: TextStyle(
          color: Get.isDarkMode ? PColor.darkGrey : PColor.lightGrey
        ),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Get.isDarkMode ? PColor.dark : PColor.light,
        enableFeedback: true,
      ),
    );
  }
}