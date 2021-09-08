import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white24, shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/email-plus-outline.png",
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.help_outline,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
          Text(
            "Olá, Pedro",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
