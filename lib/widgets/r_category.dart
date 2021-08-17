import 'package:flutter/material.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/reviewapply_page.dart';
import 'package:viral/widgets/sponapply_page.dart';


class R_Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Image.asset(
                "assets/rr_img3.png",
                width:120,
                height:120,
              ),
              SizedBox(width:20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '릴리스키친 치킨&덕',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                  Text(
                    '애완동물 사료 후기!',
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
                              MaterialPageRoute(builder: (context) => ReviewApplyPage()),
                            );
                          },

                          child: Center(
                            child: Text(
                              '보기',
                              style: TextStyle(
                                color:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width:80),

                      Text(
                        '참여형',
                        style: TextStyle(
                          color:Color(0xFFFF6F46),
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