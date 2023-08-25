import 'package:anilvideocahatting/info.dart';
import 'package:anilvideocahatting/variables.dart';
import 'package:flutter/material.dart';
import 'launch_custom_tab.dart';

class VideoChatScreen extends StatelessWidget {
  const VideoChatScreen({Key? key}) : super(key: key);

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
                        SizedBox(width: 10,),
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                        Text("  MiniSimulator Guide",style: TextStyle(color: Colors.white,fontSize: 30,),textAlign: TextAlign.left,),
                      ],
                    ))),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 150,
                image: AssetImage("assets/images/1.png"),
              ),
            ),
            Text("Video Simulator",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600),),
            Text("video simulator guide for bigger screen in smart view",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: InkWell(
                    onTap: (){
                      if(dataModel.linkdata![1].link.toString().isEmpty){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  InformationScreen(data: autoConnect,title: "AutoConnect",)),
                        );
                      }
                      else{
                        launchCustomURL(context, dataModel.linkdata![1].link.toString());
                      }
                    },
                    child: Image(
                      image: AssetImage("assets/images/2.png"),height: 70,
                    ),
                  )
                ),

                if(dataModel.linkdata![1].link.toString().isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 24,left: 20,right: 20),
                  child: Text("AD",style: TextStyle(color: Colors.black,backgroundColor: Colors.yellow,fontSize: 12),),
                )
                
              ],
            ),

            Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                    child: InkWell(
                      onTap: (){
                        if(dataModel.linkdata![2].link.toString().isEmpty){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  InformationScreen(data: connectWifi,title: "Conntect Wifi",)),
                          );
                        }
                        else{
                          launchCustomURL(context, dataModel.linkdata![2].link.toString());
                        }
                        },
                      child: Image(
                        image: AssetImage("assets/images/3.png"),
                      ),
                    )
                ),

                if(dataModel.linkdata![2].link.toString().isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 21,left: 20,right: 20),
                    child: Text("AD",style: TextStyle(color: Colors.black,backgroundColor: Colors.yellow,fontSize: 12),),
                  )
              ],
            ),

            Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        if(dataModel.linkdata![3].link.toString().isEmpty){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  InformationScreen(data: setRingtone,title: "Set Ringtone",)),
                          );
                        }
                        else{
                          launchCustomURL(context, dataModel.linkdata![3].link.toString());
                        }
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage("assets/images/4.png",),
                            width: MediaQuery.of(context).size.width/2-40,
                          ),

                          if(dataModel.linkdata![3].link.toString().isNotEmpty)
                            Text("AD",style: TextStyle(color: Colors.black,backgroundColor: Colors.yellow,fontSize: 12),)

                        ],
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        if(dataModel.linkdata![4].link.toString().isEmpty){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  InformationScreen(data: autoConnect,title: "How to Use",)),
                          );
                        }
                        else{
                          launchCustomURL(context, dataModel.linkdata![3].link.toString());
                        }
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage("assets/images/5.png",),
                            width: MediaQuery.of(context).size.width/2-40,
                          ),
                          if(dataModel.linkdata![4].link.toString().isNotEmpty)
                            Text("AD",style: TextStyle(color: Colors.black,backgroundColor: Colors.yellow,fontSize: 12),)

                        ],
                      ),
                    ),
                  ],
                )
            ),


            Spacer(),

            InkWell(
              onTap: (){
                launchCustomURL(context, dataModel.linkdata![6].link.toString());
              },
              child: Image(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      dataModel.linkdata![6].reason.toString()
                  )),
            )


          ],
        ),
      ),
    );
  }
}
