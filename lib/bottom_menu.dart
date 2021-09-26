/*
  Norbert Wagner (nProgrammer), 2021
  Take Control App - app wrote in flutter,
  that is helping people to control
  usage of stimulants.
*/

import 'package:flutter/material.dart';

const List<Widget> menuOptions = <Widget>[
  Text(
    'Index 0: Dashboard',
    style: optionStyle,
  ),
  Text(
    'Index 1: Statistics',
    style: optionStyle,
  ),
  Text(
    'Index 2: Settings',
    style: optionStyle,
  ),
];

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
