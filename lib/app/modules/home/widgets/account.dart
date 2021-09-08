import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/controllers/home_controller.dart';
import 'package:nubank_clone/app/modules/home/widgets/rounded_button.dart';

class Account extends StatelessWidget {
  final HomeController controller;

  Account(this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Conta",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black54,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "R\$ 3.500,33",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                    itemCount: controller.accountOptionList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final currentOption = controller.accountOptionList[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: RoundedButton(
                          action: currentOption.action,
                          iconData: currentOption.iconData,
                          title: currentOption.title,
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [Icon(Icons.credit_card), Text(" Meus cartões")],
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
