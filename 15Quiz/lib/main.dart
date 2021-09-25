import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() {
  runApp(const UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  const UnitConverterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: const Center(
          child: MyCategory(
              caterogyName: _categoryName,
              categoryColor: _categoryColor,
              categoryIcon: _categoryIcon),
        ),
      ),
    );
  }
}
