import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
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
          'Amio 오리진 올라이프',
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
              MaterialPageRoute(builder: (context) => PetPage()),
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

                      SizedBox(height:30),

                      Image.asset(
                        "assets/p_img1.png",
                        width:120,
                        height:120,
                      ),

                      SizedBox(height:10),

                      Row(
                        children: [
                          Text(
                            '18 ',
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

                  SizedBox(width:20),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Amio 오리진 올라이프',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                      Text(
                        '"자연이 곧 건강이다" 풀무원 반려동물 건강 캠페인',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height:30),

                      Row(
                        children: [
                          Text(
                            '인스타그램',
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

                      Row(
                        children: [
                          Text(
                            '페이스북',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(width:40),

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

                      SizedBox(height:30),

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height:20),

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
                    '안녕하세요!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '자연이 곧 건강이다! 반려동물 건강 캠페인 풀무원 입니다!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '연령, 견종 상관없이 급여 가능한 오리진 올라이프 주식!' ,
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
                    '포함내용',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Text(
                    '- 반려동물 건강 캠페인 풀무원!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 연령, 견종 상관없이 급여가능' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 유기농 닭으로 양질의 단백질 공급' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 알러지 예방에 도움을 줌' ,
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
                    '필수태그',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Text(
                    '#풀무원' ' #아미오' ' #반려동물캠페인' ' #오리진올라이프' ' #아미오오리진' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                      color:Color(0xFF612DEF),
                    ),
                  ),

                  Text(
                    '#아미오올라이프' ' #광고' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                      color:Color(0xFF612DEF),
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
                    '등록사진',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Text(
                    '제공되는 이미지 5장' ,
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
                    '제품사진',
                    style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height:15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/gg.png",

                      ),

                      Image.asset(
                        "assets/amio_img2.png",

                      ),

                      Image.asset(
                        "assets/amio_img3.png",

                      ),

                      Image.asset(
                        "assets/amio_img5.png",

                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height:30),

            Container(
              width:150,
              height:40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFF612DEF),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplyPage()),
                  );
                  print('success');
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

            SizedBox(height:30),

          ],
        ),
      ),
    );
  }
}
