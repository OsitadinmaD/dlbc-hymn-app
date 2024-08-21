import 'package:flutter/material.dart';


class PChipWidget extends StatelessWidget {
  const PChipWidget({
    super.key, required this.label, required this.icon, this.onTap,

  });
  final String label;
  final Icon icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(label , style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w600),),
        avatar: icon,
      ),
    );
  }
}