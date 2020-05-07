import 'package:appointapp/dateandyear.dart';
import 'package:flutter/material.dart';

class AppBarClass extends PreferredSize {
 AppBarClass(BuildContext context,leading, drawer,heading, keyScaf,)
     : super(
           preferredSize: Size.fromHeight(0),
           child:Container(
             height: 120,
             decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/appbarimage.png',
              ),
              fit: BoxFit.cover)
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              InkWell(onTap: (){
                drawer?keyScaf.currentState.openDrawer():Navigator.pop(context);
              },
              child:drawer? Image.asset('images/drawer.png',
              width: 50,
            ):Icon(Icons.keyboard_backspace),),

              heading?DateandYear():Container(),
                Container(
width: 30,
),        
                ],
              ),
           )
          //  child: Container(
          //    padding: EdgeInsets.only(top: 10),
          //    decoration: BoxDecoration(
          //        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22) ),
          //       // color: Color(0xff54C571)
          //    ),
          //    margin: EdgeInsets.only(bottom: 10),
          //    child: AppBar(
          //      elevation: 10,
          //      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          //      backgroundColor: Colors.transparent,
               
          //      leading:  leading? drawer? InkWell(onTap: () { keyScaf.currentState.openDrawer();},
          //              child: Image.asset('images/drawer.png',width: 30,)):
          //      InkWell(onTap: () {Navigator.pop(context);},
          //              child:
          //               Icon(Icons.arrow_back, color: Colors.white,),):Container(height: 1, width: 1,),
          //      title:              
               
          //    Text('$heading', style: TextStyle(fontSize:16,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),
          //      centerTitle: true,
          //    ),
          //  )
           );
}
class DrawerPage extends PreferredSize {
 DrawerPage(BuildContext context)
     : super(
           preferredSize: Size.fromHeight(0),
           child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width * .7,
               color: Color(0xffFFFFFF),
               child: Container(
                   child: Column(
                 children: <Widget>[
             
                   Container(
                     height: 180,
                     width: MediaQuery.of(context).size.width/01,
                   decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/drawerinerimage.png',
                  ),
                    fit: BoxFit.fill)) 
               ),
               
Expanded(
  child: ListView(
    children: <Widget>[

 Container(
                 height:MediaQuery.of(context).size.height/20,
                  
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Home ',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 16,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/home.png',
                          height: 20,
                           )
                           )
                           ),
                             Container(
                               margin: EdgeInsets.only(top: 6),
                                       height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageProducrts()));
                            },
                            title: Text('Pinned',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/pinned.png',
                           
                          height: 30,
                           )
                           )
                           ),
                             Container(
                               margin: EdgeInsets.only(top: 8),
                                       height:MediaQuery.of(context).size.height/20,
                  
                       child:
                          ListTile(
                            onTap: ()
                            {
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerList()));
                            },
                            title: Text('inbox',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/chat-speech-bubbles.png',
                          height: 23,
                           )
                           )
                           ),
                             Container(
                                 height:MediaQuery.of(context).size.height/20,
                  
                     margin: EdgeInsets.only(top: 8),
                       child:
                          ListTile(
                            onTap: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Driverdetail()));
                            },
                            title: Text('Log out',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/logout.png',
                          height: 24,
                           )
                           )
                           ),
                            
                                   
    ],
  )
)
                   ],
                 ),
               )
               )
               
               );
}

