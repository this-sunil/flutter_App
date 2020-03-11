import 'package:flutter/material.dart';

class ImageUrl extends StatefulWidget{
          final Icon icon;
          ImageUrl({Key key,this.icon}):super(key:key);
          @override
        _ImageUrlState createState() => _ImageUrlState();
}

class _ImageUrlState extends State<ImageUrl> {
        int rvalue=0;
        bool boy=false;
        bool girl=false;
        bool flag=false;
        bool uflag=false;
        void method1(val)
        {
          setState(() {
            rvalue=val;
          });
        }
         @override
        Widget build(BuildContext context) {

        return Column(
          children: <Widget>[
            //Popupmenu Button
            Center(
              child: Container(
                width: 300,
                height: 200,
                child: Card(
                  elevation: 10,
                  child: Icon(widget.icon.icon,size: 40,)),
              ),
            ),
            //Multiple Radio Buttons
            Row(
              children: <Widget>[
                Radio(value: 1, groupValue: rvalue, onChanged: (int rval){setState(() {
                  rvalue=rval;
                });}),
                Text("Male"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(value: 2, groupValue: rvalue, onChanged: (int rval){setState(() {
                  rvalue=rval;
                });}),
                 Text("Female"),
              ],
            ),

            //checkboxes
            Row(
              children: <Widget>[
                Checkbox(value: boy, onChanged: (bool c){
                  setState(() {
                    boy=c;
                  });
                }),
                Text("Boy"),

                Checkbox(value: girl, onChanged: (bool c){
                  setState(() {
                    girl=c;
                  });
                }),
                Text("girl")
              ],
            ),
            //Switch button
            Row(
              children: <Widget>[
                Switch(value: uflag, onChanged: (bool c){
                  setState(() {
                    uflag=c;
                  });
                }),
                Text("Boy"),

                Switch(value: flag, onChanged: (bool c){
                  setState(() {
                    flag=c;
                  });
                }),
                Text("girl")
              ],
            ),
          ],
        );
            
  }
}
class Photo
{
  final String title;
  final String url;
  final Icon icon;
  
  const Photo({this.title,this.url,this.icon});

}
const List<Photo> photos=<Photo>[
    const Photo(title:"Home",url:"https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",icon: Icon(Icons.home)),
    const Photo(title: "Settings",url: "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",icon: Icon(Icons.settings)),
    const Photo(title: "Information",url:"https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",icon: Icon(Icons.info_outline)),
    const Photo(title: "Contacts",url:"https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",icon: Icon(Icons.phone)),
  ];