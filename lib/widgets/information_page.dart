import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/information_page.dart';
import 'package:viral/widgets/my_page.dart';
import 'package:viral/widgets/notice_page.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/point_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  InformationPage extends StatefulWidget {

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

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
          '정보변경',
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
                child: Image.asset("assets/profile3.png")
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
                            MaterialPageRoute(builder: (context) => MainPage())
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
                                  '이름',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:40),

                                Text(
                                  '성운',
                                  style: TextStyle(
                                    fontSize:15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                    height:1.6,
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
                                  '아이디',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:30),

                                Text(
                                  'tjddns0501@naver.com',
                                  style: TextStyle(
                                    fontSize:15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w400,
                                    height:1.6,
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
              top:360,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PointPage()),
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
                                  '비밀번호',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:20),

                                Text(
                                  '●●●●●●●●●',
                                  style: TextStyle(
                                    fontSize:15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w400,
                                    height:1.6,
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
                          MaterialPageRoute(builder: (context) => PointPage()),
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
                                  '전화번호',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:20),

                                Text(
                                  '010-5555-4444',
                                  style: TextStyle(
                                    fontSize:15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w400,
                                    height:1.6,
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
              top:500,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PointPage()),
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
                                  'SNS계정',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:20),

                                Text(
                                  '인스타그램 | 97_seong',
                                  style: TextStyle(
                                    fontSize:15,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w400,
                                    height:1.6,
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
              top:600,
              child: (
                  Container(
                    color:Color(0xFFEEEFEE),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PointPage()),
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
                                  '계정탈퇴',
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
