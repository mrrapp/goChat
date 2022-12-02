import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(text: 'Projects', value: 39),
          buildDivider(),
          buildButton(text: 'Following', value: 39),
          buildDivider(),
          buildButton(text: 'Followers', value: 39),
        ],
      ),
    );
  }
}

Widget buildDivider() => const SizedBox(
      // replace Container with SizedBox
      height: 24,
      child: VerticalDivider(),
    );

Widget buildButton({required String text, required int value}) =>
    MaterialButton(
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ]),
    );
