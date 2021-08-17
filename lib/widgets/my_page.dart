import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/alram_page.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/information_page.dart';
import 'package:viral/widgets/notice_page.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/point_page.dart';
import 'package:viral/widgets/pointchang_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  MyPage extends StatefulWidget {

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '마이페이지',
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
              MaterialPageRoute(builder: (context) => MainPage()),
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

      body: new Stack (
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Container(
                height: 100,
                color: Color(0xFF612DEF),
              ),
              new Container(
                color: Colors.red,

              )
            ],
          ),
          new Positioned(
            child: new CircleAvatar(
              radius: avatarRadius,
              child: Image.asset("assets/profile2.png")
            ),
            left: (MediaQuery.of(context).size.width/2) - avatarRadius,
            top: 100 - avatarRadius,
          ),

          Container(
            child: new Positioned(
              top:160,
              left: (MediaQuery.of(context).size.width/2.1) - avatarRadius,

              child: (
                Container(

                  child:Column(
                    children: [
                      Text(
                        '성운',
                        style:TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.bold,
                        ),
                      ),

                      SizedBox(height:5),

                      Text(
                        'tjddns0501@naver.com',
                        style:TextStyle(
                          fontSize:12,
                          fontWeight:FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ),



          Container(
            child: new Positioned(
              top:220,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InformationPage())
                        );
                        print('success');
                      },
                      child: Container(
                        padding:const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '정보변경',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios, color: Color(0xFF000000), size: 17.0,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ),

          //공지사항
          Container(
            child: new Positioned(
              top:290,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NoticePage()),
                        );
                        print('success');
                      },
                      child: Container(
                        padding:const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '공지사항',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:10),

                                Image.asset(
                                  "assets/new.png",
                                  width:20,
                                  height:25,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios, color: Color(0xFF000000), size: 17.0,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ),

          Container(
            child: new Positioned(
              top:360,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PointChangPage()),
                        );
                        print('success');
                      },
                      child: Container(
                        padding:const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '포인트',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios, color: Color(0xFF000000), size: 17.0,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ),

          Container(
            child: new Positioned(
              top:430,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlramPage()),
                        );
                        print('success');
                      },
                      child: Container(
                        padding:const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '알림',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios, color: Color(0xFF000000), size: 17.0,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
