import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/controllers/home_controller.dart';
import 'package:nubank_clone/app/modules/home/widgets/find_more_card.dart';

class FindMore extends StatelessWidget {
  final HomeController controller;

  FindMore(this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Descubra mais",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 185,
                child: ListView.builder(
                    itemCount: controller.findMoreCardList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final findMoreCard = controller.findMoreCardList[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FindMoreCard(
                            findMoreCard.title,
                            findMoreCard.text,
                            findMoreCard.buttonText,
                            findMoreCard.buttonAction,
                            findMoreCard.isNew),
                      );
                    }),
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
