import 'package:appointapp/constantcolor.dart';
import 'package:flutter/material.dart';
class DateandYear extends StatefulWidget {
  @override
  _DateandYearState createState() => _DateandYearState();
}

class _DateandYearState extends State<DateandYear> {
  int date=1;
  int month=1;
  int year=12;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(

child: Row(
      children: <Widget>[
       InkWell(
         onTap: (){
//  setState(() {
//            if(date<=30)
//     {
//       date--;
//     }
//      if(month==12)
//     {
//       month--;
//       year--;
//     }
//         }
//         );
         },
child: Icon(Icons.arrow_left),
       ),

  Text('$date',
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:appcolor),),
  Text('-',
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:appcolor),),
  Text('$month',
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:appcolor),),
  Text('-',
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:appcolor),),
  Text('$year',
  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:appcolor),),
        InkWell(
         onTap: (){
            setState(() {
              date++;
              if(date==30)
              {


                if(month==12 && date==30)
                 {
                year++;
                month=1;
                date=1;
              }
              date=0;
              month++;
                
              }
        }
        );
         },
child: Icon(Icons.arrow_right),
       )
       
      ],
    ),      
    );
  }
}