import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/profile_sub.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/reviewapply_page.dart';
import 'package:viral/widgets/reviewp_page.dart';
import 'package:viral/widgets/sns_widget.dart';

class  C_ProfilePage extends StatefulWidget {

@override
  _C_ProfilePageState createState() => _C_ProfilePageState();
}

class _C_ProfilePageState extends State<C_ProfilePage> {
  final double avatarRadius = 50.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '프로필',
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
              MaterialPageRoute(builder: (context) => ReviewApplyPage()),
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

                      CircleAvatar(
                          radius: avatarRadius,
                          child: Image.asset("assets/profile2.png")
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
                        '성운',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                      Text(
                        '인스타그램 협찬/ 광고 받아요!',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(height:15),

                      Row(
                        children: [
                          Text(
                            'Follow',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(width:30),

                          Text(
                            '10.0k ',
                            style: TextStyle(
                              color:Color(0xFFFC4D17),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height:10),

                      Container(
                        width:100,
                        height:25,
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
                              '요청하기',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize:12,
                              ),
                            ),
                          ),
                        ),
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
                    '평균 별점',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Row(
                    children: [
                      Text(
                        '4.7' ,
                        style: TextStyle(
                          fontSize:23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width:10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/star2.png"),
                              Image.asset("assets/star2.png"),
                              Image.asset("assets/star2.png"),
                              Image.asset("assets/star2.png"),
                              Image.asset("assets/star2.png"),
                            ],
                          ),
                          Text(
                            '총 리뷰 250' ,
                            style: TextStyle(
                              fontSize:11,
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

            SizedBox(height:5),

            ProfileSub(),
            SizedBox(height:5),
            ProfileSub(),
            SizedBox(height:5),
            ProfileSub(),
            SizedBox(height:5),


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
                    '리뷰 더보기',
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
