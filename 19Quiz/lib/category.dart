import 'package:flutter/material.dart';
import 'package:myapp/converter_route.dart';
import 'unit.dart';

class MyCategory extends StatelessWidget {
  final String caterogyName;
  final ColorSwatch categoryColor;
  final IconData categoryIcon;
  final List<Unit> units;

  const MyCategory({
    Key? key,
    required this.caterogyName,
    required this.categoryColor,
    required this.categoryIcon,
    required this.units,
  }) : super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            caterogyName,
            style: Theme.of(context).textTheme.headline4,
          ),
          centerTitle: true,
          backgroundColor: categoryColor,
        ),
        body: ConverterRoute(
          color: categoryColor,
          units: units,
        ),
      );
    }));
  }

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
                _navigateToConverter(context);
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
