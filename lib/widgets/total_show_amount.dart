import 'package:flutter/material.dart';

Column totalShowAmount(BuildContext context, total) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Total amount:'),
          Text(
            ' \$${total().toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: const Size(
              280,
              40,
            ),
          ),
          onPressed: () {
            const snackdemo = SnackBar(
              content: Text('Congratulating'),
              backgroundColor: Colors.green,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackdemo);
          },
          child: Text(
            'check out'.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}
