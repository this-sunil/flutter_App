import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


Future<List<Photo>> fetchPhotos(http.Client client) async{
  final response=await client.get('https://jsonplaceholder.typicode.com/photos');

  return compute(parsePhotos,response.body);
}

List<Photo> parsePhotos(String responseBody)
{
  final parse=jsonDecode(responseBody).cast<Map<String,dynamic>>();

  return parse.map<Photo>((json)=>Photo.fromJson(json)).toList();
}

class JsonReadData extends StatelessWidget {
   @override
  Widget build(BuildContext context) 
{
  final appTitle='Json Demo';
  
    return MyHomePage(title: appTitle);
  }
}

class MyHomePage extends StatelessWidget {

final String title;

MyHomePage({Key key,this.title}): super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        builder: (context,snapshot){
          if(snapshot.hasError)
          print(snapshot.error);
          
          return snapshot.hasData
          ? PhotosList(photos:snapshot.data)
          : Center(child: CircularProgressIndicator());
        },
        future: fetchPhotos((http.Client())
      ),),
    );
  }
}

class PhotosList extends StatelessWidget {
  final List<Photo> photos;
  PhotosList({Key key,this.photos}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border:Border.all(),
            borderRadius:BorderRadius.circular(10.0),

          ),
          child: ListTile(
            leading:CircleAvatar(
              backgroundImage: NetworkImage(photos[index].thumbnailUrl),
            ),
            title: Text(photos[index].title),
            trailing: Text(photos[index].id.toString()),
          ),
        );
    });
  }
}


class Photo
{
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.albumId,this.id,this.title,this.url,this.thumbnailUrl});
   factory Photo.fromJson(Map<String,dynamic> json){
     return Photo(
       albumId:json['albumId'] as int,
       id:json['id'] as int,
       title:json['title'] as String,
      url:json['url'] as String,
        thumbnailUrl:json['thumbnailUrl'] as String);
   }
}





