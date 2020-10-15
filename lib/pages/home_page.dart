import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  var photo='assets/images/ic_image1.png';
  int count=1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('AppBar',style:TextStyle(fontSize:30,fontWeight:FontWeight.bold,color:Colors.white,),),
        actions:[
          IconButton(
            icon:Icon(Icons.west),
            color:Colors.white,
            onPressed:(){
              setState((){
                  photo = 'assets/images/ic_image1.png';

            });
              },
          ),
          SizedBox(width:15),
        ],
        centerTitle:true,
      ),
      body:Container(
        padding:EdgeInsets.all(6),
        color:Colors.lightBlueAccent,
        child:Container(
          child:Center(
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children:[
                Image(
                  height:200,
                  width:300,
                  fit:BoxFit.cover,
                  image:AssetImage(photo),
                ),
              OutlineButton(
                color:Colors.black,
                child:Text('next',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black,),),
                onPressed:(){
                  setState((){
                      photo = 'assets/images/ic_image3.png';
                });
                },
                ) ,
              ],
            ),
          ),
      ),
      ),
    );
  }
}