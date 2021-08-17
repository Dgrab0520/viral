import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/information_page.dart';
import 'package:viral/widgets/login_page.dart';
import 'package:viral/widgets/my_page.dart';
import 'package:viral/widgets/notice_page.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/point_page.dart';
import 'package:viral/widgets/point_widget.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  JoinPage extends StatefulWidget {

  @override
  _JoinPageState createState() => _JoinPageState();
}


class _JoinPageState extends State<JoinPage> {

  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;

  var _isChecked =false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF612DEF),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '회원가입',
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
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            print('success');
          },
        ),


        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white, size:25.0,),
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
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Color(0xFF612DEF),
                ),
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
              height: 620,
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
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width:20,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (value){
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                            ),

                            SizedBox(width:5),

                            Text('유튜브',
                              style:TextStyle(
                                fontSize:11,
                              ),
                            ),

                            SizedBox(width:15),

                            SizedBox(
                              width:20,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (value){
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                            ),

                            SizedBox(width:5),

                            Text('인스타그램',
                              style:TextStyle(
                                fontSize:11,
                              ),
                            ),

                            SizedBox(width:15),

                            SizedBox(
                              width:20,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (value){
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                            ),

                            SizedBox(width:5),

                            Text('페이스북',
                              style:TextStyle(
                                fontSize:11,
                              ),
                            ),

                            SizedBox(width:15),

                            SizedBox(
                              width:20,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (value){
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                            ),

                            SizedBox(width:5),

                            Text('블로그',
                              style:TextStyle(
                                fontSize:11,
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height:15),

                        Text(
                          'SNS계정',
                          style:TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                            labelText: 'SNS계정을 입력 해주세요.',
                            labelStyle:
                            new TextStyle(fontSize: 12.0),
                            //텍스트 크기 조절
                          ),
                          onSubmitted: (String value) async {
                            await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Thanks!'),
                                  content: Text(
                                      'You typed "$value", which has length ${value.characters.length}.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),

                        SizedBox(height:40),

                        Text(
                          '아이디',
                          style:TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                            labelText: '아이디를 입력 해주세요.',
                            labelStyle:
                            new TextStyle(fontSize: 12.0),
                            //텍스트 크기 조절
                          ),
                          onSubmitted: (String value) async {
                            await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Thanks!'),
                                  content: Text(
                                      'You typed "$value", which has length ${value.characters.length}.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),

                        SizedBox(height:40),

                        Text(
                          '비밀번호',
                          style:TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        TextField(
                          decoration: InputDecoration(
                            labelText: '비밀번호를 입력 해주세요.',
                            labelStyle:
                            new TextStyle(fontSize: 12.0),
                            //텍스트 크기 조절
                          ),
                          onSubmitted: (String value) async {
                            await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Thanks!'),
                                  content: Text(
                                      'You typed "$value", which has length ${value.characters.length}.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),

                        SizedBox(height:40),

                        Text(
                          '비밀번호 확인',
                          style:TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        TextField(
                          decoration: InputDecoration(
                            labelText: '비밀번호를 한번 더 입력 해주세요.',
                            labelStyle:
                            new TextStyle(fontSize: 12.0),
                            //텍스트 크기 조절
                          ),
                          onSubmitted: (String value) async {
                            await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Thanks!'),
                                  content: Text(
                                      'You typed "$value", which has length ${value.characters.length}.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),

                        SizedBox(height:35),

                        Center(
                          child: Container(
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
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              },

                              child: Center(
                                child: Text(
                                  '회원가입',
                                  style: TextStyle(
                                    color:Colors.white,
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
