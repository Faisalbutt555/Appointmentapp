import 'package:appointapp/appbar.dart';
import 'package:appointapp/constantcolor.dart';
import 'package:flutter/material.dart';
class Descriptiontitle extends StatefulWidget {
  @override
  _DescriptiontitleState createState() => _DescriptiontitleState();
}

class _DescriptiontitleState extends State<Descriptiontitle> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true,false,false,_scaffoldKey),
   ),
   body: Container(
     margin: EdgeInsets.only(left: 30),
     //color: Colors.red,
     child: description(),
   ),

      
    );
  }
  Widget description(){
return Container(
  height: MediaQuery.of(context).size.height,

  child: Column(
children: <Widget>[
  Container(
    margin: EdgeInsets.only(left: 30),
    width:MediaQuery.of(context).size.width/1.4,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Add Title',
         contentPadding: EdgeInsets.only(top: 12),
       hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),
      ),
    )
  ),
  SizedBox(height: 15,),
    Container(
    margin: EdgeInsets.only(left: 30),
    width:MediaQuery.of(context).size.width/1.4,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Description',
        contentPadding: EdgeInsets.only(top: 15),
         hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),
      ),
    )
  ),
  
  Container(
    margin: EdgeInsets.only(left: 30,top: 26),
    child: Text('____________________________________',
    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),),
  ),

  Container(
    margin: EdgeInsets.only(left: 50,top: 26),
child: Row(
  children: <Widget>[
    Container(
      width: 120,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration( 
suffixIcon: Container(
  margin: EdgeInsets.only(top: 10),
          child: 
        InkWell(onTap: (){},
        child: Image.asset('images/clock-circular-outline.png'),
        ), 
        ),
        hintText: 'Time',
        contentPadding: EdgeInsets.only(top: 34,right: 30),
         hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),
      ),
    )
  ),
  SizedBox(width: 20,),
    Container(
      width: 120,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration( 
suffixIcon: Container(
  margin: EdgeInsets.only(top: 10),
          child: 
        InkWell(onTap: (){},
        child: Image.asset('images/calendar (3).png'),
        ), 
        ),
        hintText: 'Date',
        contentPadding: EdgeInsets.only(top: 34,right: 30),
         hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),
      ),
    )
  ),

],),
  ),
  SizedBox(height: 20,),
  Container(
    margin: EdgeInsets.only(right: 110),
   width: MediaQuery.of(context).size.width/3,
    height: 30,
    
    child:
    TextFormField(
      decoration: InputDecoration(
        suffixIcon: Container(
  margin: EdgeInsets.only(top: 10),
          child: 
        InkWell(onTap: (){},
        child: Image.asset('images/calendar (3).png'),
        ), 
        ),
        hintText: 'Daily',
         hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:appcolor),
         contentPadding: EdgeInsets.only(top: 29,right: 30),
      ),
    )
  ),
     Container(
     margin: EdgeInsets.only(top: 70),
     child: RaisedButton(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         padding: EdgeInsets.only(left: 74,right: 74),
        color: button,
          onPressed: (){
         //   Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskList()));
          },
          child: Text('Save',
          style:TextStyle(color: whit,fontSize: 16),),
        ) 
   )
],
  ),
);
  }
}