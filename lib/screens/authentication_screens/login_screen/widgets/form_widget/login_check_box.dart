import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
    required this.title,
    required this.onChanged,
    required this.value
  });

  final String title;
  final void Function(bool?)? onChanged;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value, 
          onChanged: onChanged,
        ),
        Text(title,style: Theme.of(context).textTheme.labelMedium,), 
      ],
    );
  }
}