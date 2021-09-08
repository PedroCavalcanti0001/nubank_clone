import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
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
                    "Cartão de crédito",
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
                "Fatura atual",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
              SizedBox(height: 10),
              Text(
                "R\$ 3.500,33",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Limite disponivel de R\$ 11.53",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
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
