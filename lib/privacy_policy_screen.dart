
import 'package:anilvideocahatting/web.dart';
import 'package:flutter/material.dart';


class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    otherLinksDataFetch(context);
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/icon.png"),height: 200,),
          Text("Loading...",style: TextStyle(fontSize: 20),)
        ],
      )
    );
  }
}
