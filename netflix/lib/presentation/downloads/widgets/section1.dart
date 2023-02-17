import 'package:flutter/material.dart';

import '../../../core/colors/const.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Icon(
            Icons.settings,
            color: Colors.white,
            size: 27,
          ),
          kwidth,
          const Text(
            'Smart Downloads',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
