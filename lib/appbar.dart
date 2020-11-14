import 'package:flutter/material.dart';

Widget appbarrr() {
return AppBar(
elevation: 0,
iconTheme: IconThemeData(color: Colors.black),
backgroundColor: Colors.white,
actions: <Widget>[
Icon(
Icons.search,
color: Colors.black,
size: 32,
)
],
title: Column(
children: <Widget>[
Text(
'Delivering to',
style: TextStyle(color: Colors.grey, fontSize: 20),
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'Madenat Elsalam',
style: TextStyle(
color: Colors.orange[700],
fontWeight: FontWeight.bold,
fontSize: 25),
),
Icon(
Icons.keyboard_arrow_down,
color: Colors.orange[700],
size: 30,
)
],
),
],
),
);
}