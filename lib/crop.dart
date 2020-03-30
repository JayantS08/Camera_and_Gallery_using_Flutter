import 'package:flutter/material.dart';
import './main.dart';

var name ="demo";
String details = "Abhi kuchh nai h dikhane ko !!";
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: Text("Crop Details"),
            ),
            body: Container(
            alignment: Alignment.center,
            color: Colors.white,
            padding: EdgeInsets.only(top: 30,left: 10),
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(child:Text("Name: " , textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 30.0,color: Colors.black),

                )),
                Expanded(child: Text(name , textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20.0,color: Colors.black),

                )),
                Container(width: 20.0,)

              ],),
              Row(children: <Widget>[
                Expanded(child:Text("Details : " , textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 30.0,color: Colors.black),

                )),
                Expanded(child: Text(details , textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20.0,color: Colors.black),

                )),


              ],),
              ImageWidget(),
              HomeButton(),

            ],)

        )
    );
  }

}

class ImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/1433193.png');
    Image image = Image(image: pizzaAsset,width: 200.0, height: 200.0,);
    return Container(child: image,alignment: Alignment.center,padding: EdgeInsets.only(top: 30.0),);
  }
  }



class HomeButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Ok",style: TextStyle(color: Colors.white),),
        elevation: 5.0,
        color: Colors.grey,
        splashColor: Colors.pinkAccent,
        onPressed:() {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
      },
      ),
    );
    return button;
  }

}