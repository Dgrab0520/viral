import 'package:flutter/material.dart';
import 'package:viral/widgets/pet_page.dart';


class Point extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(20),

      width: MediaQuery.of(context).size.width*0.9,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(3, 5), // changes position of shadow
          ),
        ],//박스 둥글게 만들기
      ),

      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Amio 오리진 올라이프',
                  style: TextStyle(
                    fontSize:16,
                    fontWeight:FontWeight.bold,
                  ),
                ),

                Text(
                  '풀무원 ( Pulmuone )',
                  style: TextStyle(
                    fontSize:13,
                    color: Color(0xFF777777),
                  ),
                ),
                SizedBox(height:20),
                Text(
                  '2021/07/05 16:52:22',
                  style: TextStyle(
                    fontSize:14,
                    color: Color(0xFF777777),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  '완료' ,
                  style: TextStyle(
                    color:Colors.black,
                    fontSize:13,
                  ),
                ),

                SizedBox(height:10),

                Text(
                  '2,000P' ,
                  style: TextStyle(
                    color:Color(0xFF612DEF),
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }

  showMessage(String s) {}
}