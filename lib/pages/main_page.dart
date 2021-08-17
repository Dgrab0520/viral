import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/widgets/bell_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/my_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/sns_widget.dart';

class  MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFFFACB2E),
        centerTitle: true,
        elevation: 0.0,

        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white, size:25.0,),
            onPressed: (){
              print('menu button is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BellPage()),
              );
              print('success');
            },
          ),
        ],
      ),

      drawer: GestureDetector(

        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyPage()),
          );
          print('success');
        },
        child: Drawer(
          child: Container(
            child: ListView(
              padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color:Color(0xFF612DEF),
                        ),
                        child: Row(
                          children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.png',),
                            radius: 35,
                          ),

                          SizedBox(width: 25.0,),

                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '성운님 환영합니다.',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color:Colors.white,
                                ),
                              ),

                              SizedBox(height:5),

                              Text(
                                '2,400P',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color:Colors.white,
                                ),
                              ),
                            ],
                           ),
                          ],
                        ),
                      ),


                      Container(

                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MainPage())
                              );
                              print('success');
                            },

                            child: Row(

                              children: <Widget>[

                                Expanded(

                                  flex: 1,
                                  child: ListTile(
                                    tileColor:Color(0xFFEAEAEA),
                                    leading: Image.asset("assets/icon1.png",),
                                    title:Text('의류'),
                                    //trailing:Image.asset("assets/icon2.png",),
                                    // subtitle:Text('애완동물'),
                                  ),
                                ),

                                SizedBox(width:1),

                                Expanded(
                                  flex: 1,
                                  child: ListTile(
                                    tileColor:Color(0xFFEAEAEA),
                                    leading: Image.asset("assets/icon2.png",),
                                    title:Text('애완동물'),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),

                      SizedBox(height:7),


                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainPage())
                          );
                          print('success');
                        },

                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  tileColor:Color(0xFFEAEAEA),
                                  leading: Image.asset("assets/icon3.png",),
                                  title:Text('뷰티'),
                                  //trailing:Image.asset("assets/icon2.png",),
                                  // subtitle:Text('애완동물'),
                                ),
                              ),
                              SizedBox(width: 1.0,),
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  tileColor:Color(0xFFEAEAEA),
                                  leading: Image.asset("assets/icon4.png",),
                                  title:Text('전자제품'),
                                ),
                              ),
                            ],
                          )
                      ),

                      SizedBox(height:7),

                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MainPage())
                            );
                            print('success');
                          },

                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  tileColor:Color(0xFFEAEAEA),
                                  leading: Image.asset("assets/icon5.png",),
                                  title:Text('문화'),
                                  //trailing:Image.asset("assets/icon2.png",),
                                  // subtitle:Text('애완동물'),
                                ),
                              ),
                              SizedBox(width: 1.0,),
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  tileColor:Color(0xFFEAEAEA),
                                  leading: Image.asset("assets/icon6.png",),
                                  title:Text('식품'),
                                ),
                              ),
                            ],
                          )
                      ),

                      SizedBox(height:7),

                      Container(

                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MainPage())
                              );
                              print('success');
                            },

                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: ListTile(
                                    tileColor:Color(0xFFEAEAEA),
                                    leading: Image.asset("assets/icon7.png",),
                                    title:Text('맛집'),
                                    //trailing:Image.asset("assets/icon2.png",),
                                    // subtitle:Text('애완동물'),
                                  ),
                                ),
                                SizedBox(width: 1.0,),
                                Expanded(
                                  flex: 1,
                                  child: ListTile(
                                    tileColor:Color(0xFFEAEAEA),
                                    leading: Image.asset("assets/icon8.png",),
                                    title:Text('기타'),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),

                      SizedBox(height:20),

                      Container(
                        margin: EdgeInsets.only(right:150.0, left:15),
                        height:40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF612DEF),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainPage()),
                            );

                          },

                          child: Center(
                            child: Text(
                              '로그아웃',
                              style: TextStyle(
                                color:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),

        ),

      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                //height:380,
                padding: EdgeInsets.all(17.0),
                decoration: BoxDecoration( //백그라운드 모서리 둥글게
                  color: Color(0xFFFACB2E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height:10),
                            Stack(clipBehavior: Clip.hardEdge,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(top:5),
                                  child: Container(
                                    child: Text('바이럴마케팅',
                                      style:TextStyle(
                                        fontSize:25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    height:50,
                                    width:500,
                                  ),
                                ),
                                Positioned(bottom:-35,left:15,
                                  child: Container(
                                    child: Image.asset("assets/star.png",width:200, height:130,),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height:10),

                            Text('친구 초대시 1명당 500P 적립',
                              textAlign:TextAlign.left,
                              style:TextStyle(
                                fontSize:17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height:5),
                            Text('#바이럴마케팅  ' '#친구초대  ' '#500P',
                              style: TextStyle(
                                fontSize:12,
                              ),
                            ),

                            SizedBox(height:30),

                            Container(
                              width:500,
                              height:50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Padding(
                                        padding: EdgeInsets.only(left: 13),
                                        child: Icon(Icons.search))),
                              ),
                            ),

                            SizedBox(height: 40,),
                            Hash(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(height:10),

              Sns(),

              SizedBox(height:10),

              Review(),

            ],
          ),
      ),
    );
  }
}
