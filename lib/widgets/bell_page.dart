import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/my_page.dart';



class BellPage extends StatefulWidget{
  @override
  _BellPageState createState() => _BellPageState();
}

var _isChecked = false;

class _BellPageState extends State<BellPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '알림',
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


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                padding:const EdgeInsets.only(left:17,top:25),

                width:600,
                height:70,
                color:Colors.white,

                child: Text('오늘',
                  style:TextStyle(
                    fontSize:13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:20,bottom:20,right:17),
                height:100,
                width:600,
                decoration: BoxDecoration(
                  color:Color(0xFFEFEFEF),
                  border: Border.all(
                    width: 1,
                    color:Color(0xFFA3A3A3),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/a_img1.png",),

                    Container(
                      padding:const EdgeInsets.only(right:30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('풀무원 Amio 오리진 올라이프에서',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('광고를 요청했습니다.',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('지금',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:20,bottom:20,right:17),
                height:100,
                width:600,
                decoration: BoxDecoration(
                  color:Color(0xFFEFEFEF),
                  border: Border(
                    left: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    right: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    bottom: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/a_img2.png",),

                    Container(
                      padding:const EdgeInsets.only(right:80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('피부 모질 닥터독에서',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('광고를 요청했습니다.',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('1시간 전',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:25),

                width:600,
                height:70,
                color:Colors.white,

                child: Text('이번주',
                  style:TextStyle(
                    fontSize:13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:20,bottom:20,right:17),
                height:100,
                width:600,
                decoration: BoxDecoration(
                  color:Color(0xFFEFEFEF),
                  border: Border.all(
                    width: 1,
                    color:Color(0xFFA3A3A3),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/a_img3.png",),

                    Container(
                      padding:const EdgeInsets.only(right:30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('홀리홀릭스 유기농 강아지사료에서',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('광고를 요청했습니다.',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('3일 전',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:20,bottom:20,right:17),
                height:100,
                width:600,
                decoration: BoxDecoration(
                  color:Color(0xFFEFEFEF),
                  border: Border(
                    left: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    right: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    bottom: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/a_img4.png",),

                    Container(
                      padding:const EdgeInsets.only(right:50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('토우 훈제연어 & 고구마독에서',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('광고를 요청했습니다.',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('4일 전',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:17,top:20,bottom:20,right:17),
                height:100,
                width:600,
                decoration: BoxDecoration(
                  color:Color(0xFFEFEFEF),
                  border: Border(
                    left: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    right: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                    bottom: BorderSide( // POINT
                      color:Color(0xFFA3A3A3),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/a_img5.png",),

                    Container(
                      padding:const EdgeInsets.only(right:25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('풀무원 Amio 오리진 올라이프에서',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('광고를 요청했습니다.',
                            style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('6일 전',
                      style:TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}