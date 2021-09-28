/*
  Norbert Wagner (nProgrammer), 2021
  Take Control App - app wrote in flutter,
  that is helping people to control
  usage of stimulants.
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

Container _generateElement(BuildContext context) {
  double xc = MediaQuery.of(context).size.width;
  double yc = MediaQuery.of(context).size.height;
  double xs = 0.2 * xc;
  double xo = 0.02 * xc;
  double a = 0.05 * xc;
  double yb = 0.08 * xc;
  double xt = 0.12 * xc;
  double a2 = 0.04 * xc;
  double xp = 0.01 * xc;
  //! <- every variables are explained in take_control/scheme.jpg

  return Container(
    height: yb,
    decoration: BoxDecoration(
      color: const Color.fromARGB(70, 255, 255, 255),
      border: Border.all(
        width: 0,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Container(
          width: xo,
        ),
        Image.asset(
          'beer.png',
          height: a,
          width: a,
        ),
        Container(
          width: xo,
        ),
        const AutoSizeText(
          "Beer - 250 ml",
          style: TextStyle(
            color: Color.fromARGB(150, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
          maxLines: 1,
          minFontSize: 10,
        ),
        Container(
          width: xo,
        ),
        Container(
          width: a,
          height: a,
          decoration: BoxDecoration(
            color: const Color.fromARGB(100, 255, 255, 255),
            borderRadius: BorderRadius.circular(40),
          ),
          child: const AutoSizeText(
            '10',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
            maxLines: 1,
            minFontSize: 10,
          ),
        ),
        Container(
          width: xo,
        ),
        Container(
          width: a2,
          height: a2,
          decoration: BoxDecoration(
            color: const Color.fromARGB(100, 255, 255, 255),
            borderRadius: BorderRadius.circular(40),
          ),
          child: const AutoSizeText(
            '-',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
            maxLines: 1,
            minFontSize: 10,
          ),
        ),
        Container(
          width: xp,
        ),
        Container(
          width: a2,
          height: a2,
          decoration: BoxDecoration(
            color: const Color.fromARGB(100, 255, 255, 255),
            borderRadius: BorderRadius.circular(40),
          ),
          child: const AutoSizeText(
            '+',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
            maxLines: 1,
            minFontSize: 10,
          ),
        ),
        Container(
          width: xo,
        ),
      ],
    ),
  );
}

Row generateCounter(BuildContext context) {
  Container _element = _generateElement(context);
  return Row(
    children: [
      Expanded(
        flex: 15, // 15%
        child: Container(
          color: const Color.fromARGB(255, 2, 1, 24),
        ),
      ),
      Expanded(
        flex: 70, // 70%
        child: _element,
      ),
      Expanded(
        flex: 15, // 15%
        child: Container(
          color: const Color.fromARGB(255, 2, 1, 24),
        ),
      )
    ],
  );
}
