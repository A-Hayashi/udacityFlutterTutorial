import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  final String caterogyName;
  final ColorSwatch categoryColor;
  final IconData categoryIcon;

  const MyCategory({
    Key? key,
    required this.caterogyName,
    required this.categoryColor,
    required this.categoryIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    return const Text('asawwwaaa');
  }
}
