import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/widgets/Spon_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  SponApplyPage extends StatefulWidget {

  @override
  _SponApplyPageState createState() => _SponApplyPageState();
}

class _SponApplyPageState extends State<SponApplyPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '홀리홀릭스',
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
              MaterialPageRoute(builder: (context) => SponPage()),
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

                      SizedBox(height:20),

                      Image.asset(
                        "assets/p_img4.png",
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
                    '유기농 원료 70% 이상 함유 하고 있는 홀리홀릭스 입니다!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '연령, 견종 상관없이 급여 가능한 홀리홀릭스!' ,
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
                    '- 실내견을 위한 전용 먹거리' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 까다로운 입맛을 위해 연구개발된 포뮬러설계' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 식이성 알러지는 줄이고 유기농 원료!' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    '- 단백질70% 이상의 원료를 사용' ,
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
                    '#홀리홀릭스' ' #프리미엄사료' ' #유기농사료' ' #실내견전용사료' ' #단백질70%' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                      color:Color(0xFF612DEF),
                    ),
                  ),

                  Text(
                    '#무알러지' ' #협찬' ,
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
                    '3장이상 (반려동물과 함께 촬영 ( 급여하는 모습 ), 제품이 잘 나오게 촬영)...' ,
                    style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w500,
                    ),
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
                    MaterialPageRoute(builder: (context) => SponApplyPage()),
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
