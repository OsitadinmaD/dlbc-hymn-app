import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/alphabetic_order%20_screen/alphabetic_order_screen.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/topical_index_screen/topical_index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentsScreen extends StatefulWidget {
  const ContentsScreen({super.key});

  @override
  State<ContentsScreen> createState() => _ContentsScreenState();
}

class _ContentsScreenState extends State<ContentsScreen> {
  final List<Widget> _pages = [];
  int _currentindex = 0;
  late Widget _currentPage;

  currentPages(int index){
    return _pages[index];
  }

  void _changePage(int selectedIndex){
    setState(() {
      _currentindex = selectedIndex;
      _currentPage = _pages[selectedIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    _pages..add(const AlphabeticOrderScreen())..add(const TopicalIndex());
    _currentPage = const AlphabeticOrderScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTENTS', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
      ),
      body: SafeArea(
        child:  _currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_rounded,size: 20,),
            label: 'Alphabetical Order',
            tooltip: 'Alphabetical Order',
            activeIcon: Icon(Icons.abc_outlined, )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic_rounded,size: 20,),
            label: 'Topical Order',
            tooltip: 'Topical Order',
            activeIcon: Icon(Icons.topic_outlined, )
          ),
        ],
        currentIndex: _currentindex,
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),

    );
  }
}