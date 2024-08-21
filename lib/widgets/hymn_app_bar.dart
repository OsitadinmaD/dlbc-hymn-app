import 'package:dlcm_ghs/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class PHymnAppBarWidget extends StatelessWidget {
  const PHymnAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: PConstants.hymnAppBarColor,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PConstants.hymnNum(number: 179),
              const SizedBox(height: 5,),
              const Text('ALL THAT I HAVE IS IN JESUS'),
            ]
          ),
          InkWell(
            onTap: (){},
            child: const Icon(
              Icons.star_border_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
