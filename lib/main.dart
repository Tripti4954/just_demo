import 'package:flutter/material.dart';

main(){
  TextEditingController FirstnameController=TextEditingController();
  TextEditingController LastnameController=TextEditingController();
  runApp(MaterialApp(
    title: "first app",
    home: Scaffold(
      appBar: AppBar(
        title: Text("FIRST APP"),
      ),
      body: Center(child:
        Column(children: <Widget>[
        Text("Hello First world"),
        Text("Hello second world"),
        Text("Hello third world"),
        Text("Hello Fourth world"),
      Padding(
        padding: EdgeInsets.all(15.0),
      
      child: TextField(
          textDirection: TextDirection.ltr,

          controller: FirstnameController,
          decoration: InputDecoration(
           border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          
          labelText:"FIRST NAME LABEL",
          hintText:"LAST NAME LABEL"
          ),
          onChanged: (String text){
            debugPrint("Text from input: $text");
          },
        )),
        Padding(
        padding: EdgeInsets.all(15.0),
      
      child: TextField(
          textDirection: TextDirection.ltr,

          controller: LastnameController,
          decoration: InputDecoration(
           border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          
          labelText:"LAST NAME LABEL",
          hintText:"LAST NAME LABEL"
          ),
          onChanged: (String text){
            debugPrint("Text from input: $text");
          },
        )),
        RaisedButton(padding: EdgeInsets.all(15.0),
        child: Text("save"),
        onPressed: (){
          debugPrint("FIRST NAME: ${FirstnameController.text}, LAST NAME: ${LastnameController.text}");
        showDialog<void>(
     context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Rewind and remember'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You will never be satisfied.'),
              Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Regret'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      
        },)
      ],)
      ),
    ),
    
  ));
}