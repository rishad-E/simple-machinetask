import 'package:flutter/material.dart';

Widget listTilewidget(
    String name, bool val, Widget wid3) {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 99, 172, 233),
        borderRadius: BorderRadius.circular(15)),
    height: 100,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: val == false
                    ? const SizedBox()
                    : IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)),
              ),
              Container(
                child: val == false
                    ? const SizedBox()
                    : IconButton(
                        onPressed: () {}, icon: const Icon(Icons.edit)),
              ),
            ],
          ),
        ),
        Text(name),
        wid3,
      ],
    ),
  );
}
