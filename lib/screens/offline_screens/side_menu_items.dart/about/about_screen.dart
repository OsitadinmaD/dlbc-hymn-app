import 'package:dlcm_ghs/screens/offline_screens/hymn_home.dart/controller/hymn_home_controller.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Get.put(HymnHomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        }, icon: const Icon(Icons.close_rounded,size: 25,)),
        actions: const [],
      ),
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: Stack(
            children: [
              Column(
                children: [
                  Text(
                    "This app was developed by the PIXSLIDE team to enhance and facilitate the spiritual growth of the church and also the availability of it's hymnal to the brethren as stated in the scriptures - Ephesians 5 : 19 and Colosians 3 : 16",
                     style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
                     softWrap: true,
                     textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: Psizes.lg * 2,),
                  Text(
                    'DISCLAIMER',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: Psizes.md,),
                  Text(
                    "All text material used in this app belong to the DEEPER CHRISTIAN LIFE MINISTRY.\nPlease note: This material is not allowed to be pirated, please contact DCLM headquarter Lagos Nigeria for request of any material",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: Psizes.md * 20,),
                ],
              ),
              Positioned(
                bottom: PHelperFunctions.toolBarHeight() * 0.5,
                left: PHelperFunctions.screenWidth() * 0.225,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "from",
                        style: Theme.of(context).textTheme.headlineMedium,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Pix',style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.orange)),
                            TextSpan(text: 'Slide',style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Get.isDarkMode ?  Colors.white : Colors.black))
                          ]
                        ), 
                      )
                    ]
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }
}