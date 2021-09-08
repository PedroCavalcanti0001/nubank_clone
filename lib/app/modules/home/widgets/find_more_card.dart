import 'package:flutter/material.dart';

class FindMoreCard extends StatelessWidget {
  String title;
  String text;
  String buttonText;
  Function buttonAction;
  bool isNew;

  FindMoreCard(
      this.title, this.text, this.buttonText, this.buttonAction, this.isNew);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 225,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              softWrap: true,
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: buttonAction(),
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
