//import 'package:flutter/material.dart';
//import 'package:app/percentageBar.dart';

import 'package:flutter/material.dart';

class MoodImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            children: [
              Image.asset(
                'lib/images/loveearth (1).png',
                width: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: PercentageBar(percentage: 0.2)
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}