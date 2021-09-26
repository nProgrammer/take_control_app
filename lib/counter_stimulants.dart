/*
  Norbert Wagner (nProgrammer), 2021
  Take Control App - app wrote in flutter,
  that is helping people to control
  usage of stimulants.
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Container _element = Container(
  height: 100,
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
        width: 20,
      ),
      Image.asset(
        'beer.png',
        height: 70,
        width: 70,
      ),
      Container(
        width: 20,
      ),
      const Text(
        "Beer - 250 ml",
        style: TextStyle(
          color: Color.fromARGB(150, 255, 255, 255),
          fontWeight: FontWeight.bold,
          fontSize: 23.5,
        ),
      ),
    ],
  ),
);

Row counterStimulants = Row(
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
