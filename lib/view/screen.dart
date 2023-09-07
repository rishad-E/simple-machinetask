// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:testproject/view/widget/screenwidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List k = [
    ['rish', false],
    ['ameen', false],
    ['fari', false],
    ['hori', false]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: listTilewidget(
                    k[index][0],
                    k[index][1],
                    Checkbox(
                      value: k[index][1],
                      onChanged: (value) => checkboxchanged(value, index),
                    ),
                  ));
            },
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        ),
      ),
    );
  }

  void checkboxchanged(bool? value, int index) {
    setState(() {
      k[index][1] = !k[index][1];
    });
  }
}
