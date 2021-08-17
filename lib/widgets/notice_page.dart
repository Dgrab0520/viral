import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/my_page.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  NoticePage extends StatefulWidget {

  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFFFC4D17),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '공지사항',
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
              MaterialPageRoute(builder: (context) => MyPage()),
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
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( // POINT
                    color: Color(0xFFB9B9B9),
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              '[필독] ',
                              style:TextStyle(
                                color:Color(0xFFFC4D17),
                                fontWeight:FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height:5),
                            Text(
                              'SNS계정에 따른 적립금 규정',
                              style:TextStyle(
                                color:Color(0xFF000000),
                                fontWeight:FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Text(
                          '2021.07.10',
                          style: TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_forward_ios,),

                  ]
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( // POINT
                    color: Color(0xFFB9B9B9),
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(17.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height:5),
                        Text(
                          '신규회원가입 이벤트',
                          style:TextStyle(
                            color:Color(0xFF000000),
                            fontWeight:FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height:10),

                        Text(
                          '2021.07.15',
                          style: TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_forward_ios,),

                  ]
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( // POINT
                    color: Color(0xFFB9B9B9),
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(17.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height:5),
                        Text(
                          '중복적립 포인트 차감 안내',
                          style:TextStyle(
                            color:Color(0xFF000000),
                            fontWeight:FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height:10),

                        Text(
                          '2021.07.11',
                          style: TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_forward_ios,),

                  ]
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( // POINT
                    color: Color(0xFFB9B9B9),
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(17.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height:5),
                        Text(
                          '업데이트 및 서비스 변경 안내',
                          style:TextStyle(
                            color:Color(0xFF000000),
                            fontWeight:FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height:10),

                        Text(
                          '2021.07.10',
                          style: TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_forward_ios,),

                  ]
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( // POINT
                    color: Color(0xFFB9B9B9),
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(17.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height:5),
                        Text(
                          '기존회원 포인트 적립 제도',
                          style:TextStyle(
                            color:Color(0xFF000000),
                            fontWeight:FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height:10),

                        Text(
                          '2021.07.09',
                          style: TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios,),

                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
