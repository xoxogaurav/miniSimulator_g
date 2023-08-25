import 'package:anilvideocahatting/variables.dart';
import 'package:flutter/material.dart';

import 'launch_custom_tab.dart';


class SelectGirlScreen extends StatefulWidget {
  const SelectGirlScreen({Key? key}) : super(key: key);

  @override
  State<SelectGirlScreen> createState() => _SelectGirlScreenState();
}

class _SelectGirlScreenState extends State<SelectGirlScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Column(

          children: [


            Material(
              color: Colors.cyan.shade900,
                elevation: 5,
                child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text("  MiniSimulator Guide",style: TextStyle(color: Colors.white,fontSize: 30,),textAlign: TextAlign.left,),
                      ],
                    ))),

            Spacer(),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 200,
                image: AssetImage("assets/images/1.png"),
              ),
            ),
            Text("MiniSimulator",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600),),
            Text("video simulator guide for bigger screen in smart view",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),),


            Spacer(),


            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/3");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan.shade900,
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 60,
                width: 320,
                alignment: Alignment.center,
                child: Text("Start Now",style: TextStyle(color: Colors.white,fontSize: 30),),
              ),
            ),


            Spacer(),


            InkWell(
              onTap: (){
                launchCustomURL(context, dataModel.linkdata![5].link.toString());
              },
              child: Image(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      dataModel.linkdata![5].reason.toString()
                  )),
            )

          ],
        ),
      ),
    );
  }
}
