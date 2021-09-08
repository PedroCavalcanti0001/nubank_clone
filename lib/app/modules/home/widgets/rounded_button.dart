import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function action;
  final IconData iconData;
  final List<String> title;

  RoundedButton(
      {required this.action, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action(),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(iconData),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
            children: title
                .map((e) => Text(e, style: TextStyle(color: Colors.black)))
                .toList()),
      ]),
    );
  }
}
