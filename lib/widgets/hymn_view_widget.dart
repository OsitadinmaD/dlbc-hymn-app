import 'package:dlcm_ghs/utils/constants/constants.dart';
import 'package:dlcm_ghs/widgets/hymn_app_bar.dart';
import 'package:flutter/material.dart';

class PHymnViewWidget extends StatelessWidget {
  const PHymnViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white
      ) ,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            top: 0,
            child: PHymnAppBarWidget()
          ),
          Expanded(
            child: Positioned(
              top: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 5,),
                      const Text('1. Stanza 1'),
                      Divider(color: PConstants.hymnAppBarColor,thickness: 5,),
                      const Text('2. Stanza 2'),
                      Divider(color: PConstants.hymnAppBarColor,thickness: 5,),
                    ],
                  ),
                ),
              ),
            )
          ),

          Positioned(
            top: MediaQuery.of(context).size.height-60,
            left: MediaQuery.of(context).size.width-278,
            child: Container(
              height: 50,
              width: 200,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: PConstants.hymnAppBarColor
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){},
                    splashColor: PConstants.hymnAppBarColor.withOpacity(0.7),
                    radius: 20,
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 30,
                      color: PConstants.hymnAppBarColor,
                    )
                  ),
                  InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.audiotrack,
                      size: 30,
                      color: PConstants.hymnAppBarColor,
                    )
                  ),
                  InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.repeat,
                      size: 30,
                      color: PConstants.hymnAppBarColor,
                    )
                  ),
                  InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 30,
                      color: PConstants.hymnAppBarColor,
                    )
                  ),

                ],

              ),
            ),
            
          )

        ],
      ),
    );
  }
}

