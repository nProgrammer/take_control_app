/*
  Norbert Wagner (nProgrammer), 2021
  Take Control App - app wrote in flutter,
  that is helping people to control
  usage of stimulants.
*/

import 'package:flutter/material.dart';

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
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(100, 255, 255, 255),
          border: Border.all(
            width: 0,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    Expanded(
      flex: 15, // 15%
      child: Container(
        color: const Color.fromARGB(255, 2, 1, 24),
      ),
    )
  ],
);
