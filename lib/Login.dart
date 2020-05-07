import 'package:appointapp/constantcolor.dart';
import 'package:appointapp/tasklist.dart';
import 'package:flutter/material.dart';
class Loginclass extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Loginclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: appcolor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(26),
                  bottomRight: Radius.circular(26)
                )
              ),
              height: MediaQuery.of(context).size.height,
              width: 20,
            ),
            Expanded(child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
              height: 40,
              width: 70,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: appcolor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(26),
                  bottomRight: Radius.circular(26)
                )
              ),  
              child:
             Text('Login',
              style: TextStyle(fontSize: 21,color: whit),),
               
            ),
            Container(
              padding: EdgeInsets.only(top: 45),
              child:
                emailpass()
              
            )
                      
                    
          ],
      
        ),),
          ]
      )
      )
      );
  }
  Widget emailpass(){
  return Container(
  width: 330,
    padding: EdgeInsets.only(left: 27, right: 20),
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(left: 50),
          
child: Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
Container(
width: 30, height: 30,
child:  Image.asset('images/email.png',
            color: appcolor,),
),
Expanded(
child: TextFormField(
decoration: InputDecoration(
           border: InputBorder.none,
        hintText: '  Enter Email',
        labelStyle: TextStyle(color: appcolor,fontSize: 14),
        contentPadding: EdgeInsets.only(bottom: 6)
      ),
        ),
        ),
],
),  
        ),
      
        Container(
          height: 2.5,
        color: appcolor,),
        SizedBox(height: 12,),
                  Container(
      padding: EdgeInsets.only(left: 50),
           decoration: BoxDecoration(
               
               border: Border(
                 bottom: BorderSide(
                 color: appcolor,
                 
                 )
               )
              ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
Container(
width: 30, height: 30,
 child:  Image.asset('images/Path 2378.png',
            color: appcolor,width: 40,),
),
Expanded(
child: TextFormField(
   decoration: InputDecoration(
           border: InputBorder.none,
        hintText: '  Enter Password',
        labelStyle: TextStyle(color: appcolor,fontSize: 14),
       
      ),
        ),
        ),
],
),  
        ), 
         Container(
          height: 2,
        color: appcolor,), 
            SizedBox(height: 12,),
      Row(children: <Widget>[
        Text('Forgot Password ?',
          style:    TextStyle(color: appcolor,fontSize: 14,fontWeight: FontWeight.bold),
        ),
      ]
      ,),
   Container(
     margin: EdgeInsets.only(top: 40),
     child: RaisedButton(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         padding: EdgeInsets.only(left: 64,right: 64),
        color: button,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskList()));
          },
          child: Text('Loign',
          style:TextStyle(color: whit,fontSize: 16),),
        ) 
   )
      
        
      ],
    )
  );
  }
}