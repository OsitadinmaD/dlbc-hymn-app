import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../hymnal_screens/search_list_screen/search_screen.dart';

class FavoriteScreen extends StatelessWidget{
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(FavoriteScreenController());
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVORITE HYMNS', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: [
          IconButton(onPressed: () => Get.to(() => const SearchBarScreen()), icon: const Icon(Icons.search_rounded,size: 25,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings_rounded,size: 25,))
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}