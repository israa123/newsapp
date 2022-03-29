import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image:
                  DecorationImage(image: NetworkImage(''), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 120.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tilte',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  '',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
