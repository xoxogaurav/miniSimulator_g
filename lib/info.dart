import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  final String data,title;
  const InformationScreen({super.key, required this.data, required this.title});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: ListView(
        children: [

          Container(
            height: 50,
            color: Colors.cyan.shade900,
            alignment: Alignment.center,
            child: Text(
              widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 35),
            ),
          ),

          SizedBox(height: 30,),

          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(widget.data,
             style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600)
            ),
          )
          
        ],
      ),
    );
  }
}
