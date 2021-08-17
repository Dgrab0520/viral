import 'package:flutter/material.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/sponapply_page.dart';


class S_Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Image.asset(
                "assets/p_img4.png",
                width:120,
                height:120,
              ),
              SizedBox(width:20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '홀리홀릭스 유기농 사료',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                  Text(
                    '유기농 원료 70%이상 함유! 홀리!',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:25),

                  Row(
                    children: [
                      Container(
                        width:80,
                        height:30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF612DEF),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SponApplyPage()),
                            );
                          },

                          child: Center(
                            child: Text(
                              '신청하기',
                              style: TextStyle(
                                color:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width:80),

                      Text(
                        '15 ',
                        style: TextStyle(
                          color:Color(0xFFFF6F46),
                        ),
                      ),

                      Text(
                        '/ 30',
                        style: TextStyle(

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height:40),
        ],
      ),
    );
  }

  showMessage(String s) {}
}