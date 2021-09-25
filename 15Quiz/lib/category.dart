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

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 100,
          child: InkWell(
              borderRadius: BorderRadius.circular(50),
              highlightColor: categoryColor,
              onTap: () {
                // ignore: avoid_print
                print('I was tapped!');
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      categoryIcon,
                      size: 60,
                    ),
                  ),
                  Center(
                    child: Text(
                      caterogyName,
                      style: const TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
