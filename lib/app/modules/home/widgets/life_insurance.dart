import 'package:flutter/material.dart';

class LifeInsurance extends StatelessWidget {
  const LifeInsurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.credit_card),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seguro de vida",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black54,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Conheça Nubank Vida: um seguro simples e que cabe no bolso.",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                softWrap: true,
              ),
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
