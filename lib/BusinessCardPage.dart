import 'package:flutter/material.dart';
import 'UserDetails.dart';

class BusinessCardPage extends StatelessWidget {
  BusinessCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 300,
          child: Image.asset('assets/gru_headshot.jpg'),
        ),
        Text(name),
        Text(role),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(phone), Text(website)],
        )
      ],
    );
  }
}
