import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:anilvideocahatting/data_model.dart';
import 'package:anilvideocahatting/variables.dart';
import 'package:http/http.dart' as http;


//fetch other links data
void otherLinksDataFetch(context) async {
  http.Response response = await http.get(Uri.parse("https://fantasytelegraph.com/minisimulatorapi/apis/public/api/fetchdata"));
  if(response.statusCode == 200)
  {
    print(response.body);
    dataModel = DataModel.fromJson(jsonDecode(response.body.toString()));
    if(dataModel.linkdata![0].link?.trim()=='1')
    {
      objLive=true;
    }


    Navigator.popAndPushNamed(context, "/2");

  }
  else
  {
    //check connection
  }
}



