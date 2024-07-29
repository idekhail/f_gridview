import 'package:f_gridview/firstgrid.dart';
import 'package:f_gridview/secondgrid.dart';
import 'package:f_gridview/thirdgrid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FirstGrid( );
  }
}
