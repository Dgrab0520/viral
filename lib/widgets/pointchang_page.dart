
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
import 'package:viral/widgets/point_widget.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  PointChangPage extends StatefulWidget {

  @override
  _PointChangPageState createState() => _PointChangPageState();
}

class _PointChangPageState extends State<PointChangPage> {

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
          '포인트',
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
              )
            ],
          ),
          new Positioned(
            top:50,
            left: (MediaQuery.of(context).size.width/5.5) - avatarRadius,
            child: Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(3, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(height:25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '성운님의 보유 포인트',
                            style:TextStyle(
                              fontSize:14,

                            ),
                          ),
                          SizedBox(width:5),

                          Image.asset("assets/point.png",width:15,height:15,),
                        ],
                      ),

                      Text(
                        '2,400P',
                        style:TextStyle(
                          fontSize:50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF612DEF),
                        ),
                      ),
                      Text(
                        'Today 2021.08.03 15:00:22 ',
                        style:TextStyle(
                          fontSize: 14,
                          color:Color(0xFF828282),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            child: new Positioned(
              top:250,
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
                                  '누적 포인트',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:20),

                                Text(
                                  '56,000P',
                                  style: TextStyle(
                                    height:1.5,
                                    fontSize:16,
                                    color:Color(0xFF555555),
                                    fontWeight: FontWeight.w400,
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
              top:320,
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
                                  '적립 / 출금 내역',
                                  style: TextStyle(
                                    fontSize:16,
                                    color:Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(width:10),
                                
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
              top:390,
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
                                  '출금신청',
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
