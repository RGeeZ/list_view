import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello",
      home: HrsIp(),
    );
  }
}

class HrsIp extends StatefulWidget {
  @override
  _HrsIpState createState() => _HrsIpState();
}

class _HrsIpState extends State<HrsIp> {
  @override
  String name="";
  String currency="";
  var _currentItemSelected='Rupee';
  var _currencies=['Rupee','Dollar','Euro','Pound'];
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("dEFe"),
     ),
     body: Container(
       margin:EdgeInsets.all(20),
       child:Column(
         children: <Widget>[
           TextField(
             onSubmitted:(String userInput){
               setState(() {
                 name = userInput;
               });
             },
     ),
             Text(
         "YOUR CITY is $name",
               style: TextStyle(fontSize: 20.0),
     ),
           DropdownButton<String>(items: _currencies.map((String dropDownStringItem){
             return DropdownMenuItem<String>(
             value:dropDownStringItem,
             child:Text(dropDownStringItem),
             );
           }).toList(),
          onChanged: (String newValueSelected){
             setState(() {
                this._currentItemSelected=newValueSelected;
             });
    },
             value: _currentItemSelected,
    ),

         ],
     ),
   ),
   );
  }
}
