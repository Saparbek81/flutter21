import 'package:flutter/material.dart';

class AlertClass {
  Future<void> showMyDialog(context, {required String text}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Жыйынтык'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text('Артка кайтуу'),
                Text(text),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Approve')),
          ],
        );
      },
    );
  }
}
