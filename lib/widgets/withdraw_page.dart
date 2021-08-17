import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/my_page.dart';
import 'package:viral/widgets/point_c_widget.dart';
import 'package:viral/widgets/point_page.dart';
import 'package:viral/widgets/point_widget.dart';
import 'package:viral/widgets/pointchang_page.dart';


class WithdrawPage extends StatefulWidget {

  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
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
              MaterialPageRoute(builder: (context) => PointChangPage()),
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

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height:40),

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
                  '1,500P',
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

                SizedBox(height:30),

                Container(
                  height:60,
                  decoration:BoxDecoration(
                    color: Color(0xFF612DEF),
                    borderRadius: BorderRadius.all(
                        Radius.circular(50.0)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(width:3),

                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PointPage())
                          );
                          print('success');
                        },
                        child: Expanded(
                          flex:1,
                          child: Container(
                            width:154,
                            height:55,
                            alignment: Alignment.center,
                            child: Text(
                              '적립',
                              style:TextStyle(
                                fontSize:17,
                                fontWeight:FontWeight.bold,
                                color:Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PointPage())
                          );
                          print('success');
                        },

                        child: Expanded(
                          flex:1,
                          child: Container(
                            margin:const EdgeInsets.only(left:12),
                            width:180,
                            height:55,
                            decoration:BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100.0)
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '출금',
                              style:TextStyle(
                                fontSize:17,
                                fontWeight:FontWeight.bold,
                                color:Color(0xFF612DEF),

                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width:1),




                    ],
                  ),
                ),

                SizedBox(height:30),

                Container(
                  padding:const EdgeInsets.all(20),

                  width: MediaQuery.of(context).size.width*0.9,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 5), // changes position of shadow
                      ),
                    ],//박스 둥글게 만들기
                  ),

                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'KB국민은행',
                              style: TextStyle(
                                fontSize:16,
                                fontWeight:FontWeight.bold,
                              ),
                            ),

                            Text(
                              '515502-2*-******',
                              style: TextStyle(
                                fontSize:13,
                                color: Color(0xFF777777),
                              ),
                            ),
                            SizedBox(height:20),
                            Text(
                              '2021/07/05 16:52:22',
                              style: TextStyle(
                                fontSize:14,
                                color: Color(0xFF777777),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text(
                              '대기중' ,
                              style: TextStyle(
                                color:Colors.black,
                                fontSize:13,
                              ),
                            ),

                            SizedBox(height:10),

                            Text(
                              '-2,000P' ,
                              style: TextStyle(
                                color:Color(0xFFFACB2E),
                                fontSize:25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ]
                  ),
                ),

                SizedBox(height:30),

                PointC(),
                SizedBox(height:30),
                PointC(),
                SizedBox(height:30),
                PointC(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
