import 'package:flutter/material.dart';
import 'package:viral/widgets/pet_page.dart';

import 'apply_page.dart';


class ProfileSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFFEEEFEE),

      child: Container(

        padding: EdgeInsets.all(17.0),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide( // POINT
              color: Color(0xFFFACB2E),
              width: 5.0,
            ),

          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amio 오리진 올라이프',
                  style: TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(right:90),
                  child: Row(
                    children: [
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                    ],
                  ),
                ),


                Text(
                  '2020.07.05',
                  style: TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height:10),

            Text(
              '풀무원에서 파는 오리진 올라이프 사료를 강아지에게 급여 해봤는데,' ,
              style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w500,
              ),
            ),

            Text(
              '전에는 밥을 잘 안먹었는데 이 사료는 너무 잘 먹어요! ...' ,
              style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
  showMessage(String s) {}
}