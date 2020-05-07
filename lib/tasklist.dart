import 'package:appointapp/appbar.dart';
import 'package:appointapp/constantcolor.dart';
import 'package:appointapp/titleanddiscription.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,true,true,_scaffoldKey ),
   ),
    body: Container(
      margin: EdgeInsets.only(top: 40),
child: Column(
  children: <Widget>[
    cardd('Task 1',1,1),
    SizedBox(height: 14,),
    cardd('Task 2',2,2),
     SizedBox(height: 14,),
    cardd('Task 3',3 ,0),
    SizedBox(height: 70,),
Container(
  margin: EdgeInsets.only(right: 30),
  height: 70,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    InkWell(onTap: (){
     Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Descriptiontitle()));
    
    },
    child: 
 Image.asset('images/plus .png',
  height: 60,
  )
    )
  ],
),)
    
  ],
)
    ),  
    );
  }
  Widget cardd(String text, int image1,int image2){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 12,
    margin: EdgeInsets.only(left: 60,right: 60),
    child: Container(
    width: MediaQuery.of(context).size.width,
   height: 60,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 40,
        width: 25,
        margin: EdgeInsets.only(left: 30),
        child:InkWell(
          onTap: (){},
child:image1==1?
Image.asset('images/pinned.png',
color: appcolor,):image1==2?Image.asset('images/pinned.png',
color: appcolor,):image1==3?Image.asset('images/pinned.png',
color: takcolor,):Image.asset('images/pinned.png',)
        ),
        ),
         Container(
          margin: EdgeInsets.only(left: 20,),
          child: Text('$text',
         style: TextStyle(color: Color(0xff474747),fontSize: 23,fontWeight: FontWeight.bold),),),
         
     Container(
       margin: EdgeInsets.only(left: 35),
       width: 50,
       height: 50,
    child:InkWell(
        onTap: (){},
        child: image2==1?
Image.asset('images/refresh-button.png',
color: takcolor,):image2==2?Image.asset('images/attention.png',
color: takcolor,):Image.asset('images/pinned.png',
color: takcolor,)
)
     ),
    ],
    ),  
    ),
  );
}
}