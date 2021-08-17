import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/c_profile_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/reviewp_page.dart';
import 'package:viral/widgets/sns_widget.dart';

class  ReviewApplyPage extends StatefulWidget {

  @override
  _ReviewApplyPageState createState() => _ReviewApplyPageState();
}

class _ReviewApplyPageState extends State<ReviewApplyPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '릴리스키친',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),

        leading:
        IconButton(
          icon: Icon(Icons.arrow_back_outlined, color: Colors.white, size:25.0,),
          onPressed: (){
            print('menu button is clicked');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReviewPPage()),
            );
            print('success');
          },
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size:25.0,),
            onPressed: (){
              print('menu button is clicked');
            },
          ),
        ],

      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(17.0),
              child: Row(
                children: [
                  Column(
                    children: [

                      SizedBox(height:10),

                      Image.asset(
                        "assets/rr_img3.png",
                        width:120,
                        height:120,
                      ),

                      SizedBox(height:10),

                    ],
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
                        '부드러운 사료 릴리스!',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height:30),

                      Row(
                        children: [
                          Text(
                            '참여형후기',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(width:30),

                          Text(
                            '금액 측정중 ',
                            style: TextStyle(
                              color:Color(0xFFFC4D17),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Text(
                            '적립',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height:0),

            Container(
              width:500,
              color:Color(0xFFEEEFEE),
              padding: EdgeInsets.all(17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '상세정보',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Text(
                    '릴리스키친' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '치킨 & 덕' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width:500,
              color:Colors.white,
              padding: EdgeInsets.all(17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '후기',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Text(
                    '릴리스키친에서 파는 치킨&덕 사료를 강아지에게 급여해봤는데,' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '전에는 밥을 잘 안먹었는데 이 사료는 너무 잘 먹어요!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '위생적으로 개별포장이 되어있는 부분도 마음에 들고,' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '무엇보다 릴리스키친에서 만든거라 안심하도 먹일 수 있어서 좋아요~' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width:500,
              color:Color(0xFFEEEFEE),
              padding: EdgeInsets.all(17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '별점',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Row(
                    children: [
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),
                      Image.asset("assets/star2.png"),

                      SizedBox(width:10),

                      Text('5.0 ',
                        style:TextStyle(
                          color:Color(0xFF612DEF),
                        ),
                      ),

                      Text('/ 5.0',
                        style:TextStyle(
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            Container(
              width:500,
              color:Color(0xFFFFFFFF),
              padding: EdgeInsets.all(17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '등록사진',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Row(
                    children: [
                      Image.asset(
                        "assets/rrr_img1.png",

                      ),

                      SizedBox(width:15),

                      Image.asset(
                        "assets/rrr_img2.png",

                      ),

                      SizedBox(width:15),

                      Image.asset(
                        "assets/rrr_img3.png",

                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height:30),

            Container(
              width:170,
              height:40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFF612DEF),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => C_ProfilePage()),
                  );
                  print('success');
                },

                child: Center(
                  child: Text(
                    '작성자 프로필 보기',
                    style: TextStyle(
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height:30),

          ],
        ),
      ),
    );
  }
}
