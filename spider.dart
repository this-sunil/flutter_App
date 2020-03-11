import 'package:flutter/material.dart';
class Spider extends StatefulWidget {
  @override
  _SpiderState createState() => _SpiderState();
}

class _SpiderState extends State<Spider> {
  double amt=0;
  double index=0;
  bool s=false;
  bool p=false;
  bool rval=false;bool rval1=false;
  int i;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            
            Row(
              children: <Widget>[
                Checkbox(
                  
                  activeColor: Colors.pink,
                  value: s, onChanged: (bool male){
                  setState(() {
                  s=male;
                  });
                }),
                Text('Male'),

                Checkbox(
                  
                  activeColor: Colors.pink,
                  value: p, onChanged: (bool female){
                  setState(() {
                    p=female;
                  });
                }),
                Text('Female')
              ],
            ),

          

            Row(
              children: <Widget>[
                
                Radio(
                  activeColor: Colors.pink,
                  value: 1, 
                  groupValue: i,
                  onChanged: (int val){
                  setState(() {
                    i=val;
                  });
                }),
                Text('Male'),

                Radio(
                  activeColor: Colors.pink,
                  value: 2, 
                  groupValue: i,
                  onChanged: (int val){
                  setState(() {
                    i=val;
                  });
                }),
                Text('Female')
              ],
            ),
            Slider(
              min: 0,max: 100,
              divisions: 10,
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.white70,
              label: index.toInt().toString(),           
              value:amt,onChanged: (val){
                setState(() {
                  amt=val;
                 index=amt;
                });
                
            },),
            Column(
                children: <Widget>[
                  
                  Chip(label: Text("flutter"),
                  backgroundColor: Colors.white,
                  elevation: 9.0,
                  deleteIconColor: Colors.pink,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child:Icon(Icons.add_circle)),),
                    SizedBox(width:10),
                    Chip(label: Text("HTML"),
              backgroundColor: Colors.white,
              elevation: 9.0,
              deleteIconColor: Colors.pink,
              avatar: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child:Icon(Icons.add_circle_outline)),),

                SizedBox(width:10),
                    Chip(label: Text("Bootstrap"),
              backgroundColor: Colors.white,
              elevation: 9.0,
              deleteIconColor: Colors.pink,
              avatar: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child:Icon(Icons.remove_circle_outline)),),


                SizedBox(width:10),
                    Chip(label: Text("Angular Js"),
              backgroundColor: Colors.white,
              elevation: 9.0,
              deleteIconColor: Colors.pink,
              avatar: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child:Icon(Icons.add_circle_outline)),),


                 SizedBox(width:10),
                    Chip(label: Text("JQuery"),
              backgroundColor: Colors.white,
              elevation: 9.0,
              deleteIconColor: Colors.pink,
              avatar: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child:Icon(Icons.close)),),
                ],
              ),
              
          ],
        ),
      
    );
  }
}