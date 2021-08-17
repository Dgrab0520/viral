import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viral/pages/main_page.dart';
import 'package:viral/widgets/apply_page.dart';
import 'package:viral/widgets/hash_widget.dart';
import 'package:viral/widgets/pet_category_page.dart';
import 'package:viral/widgets/pet_page.dart';
import 'package:viral/widgets/review_widget.dart';
import 'package:viral/widgets/reviewp_page.dart';
import 'package:viral/widgets/s_category.dart';
import 'package:viral/widgets/sns_widget.dart';

class  SponPage extends StatefulWidget {

  @override
  _SponPageState createState() => _SponPageState();
}

class _SponPageState extends State<SponPage> {
  final _valueList = ['포인트 지급', '협찬', '후기작성'];
  var _selectedValue = '협찬';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFC4D17),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFFFC4D17),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '애완동물',
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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  GestureDetector(
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PetPage()),
                    );
                    },
                  child: Container(
                    width:80,
                    height:30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFF6F46),
                    ),
                    child:Center(
                      child: (
                          Text(
                            '사료',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          )
                      ),
                    ),
                   ),
                  ),
                  Container(
                    width:80,
                    height:30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child:Center(
                      child: (
                          Text(
                            '간식',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReviewPPage()),
                    );
                  },

                  child: Container(
                    width:80,
                    height:30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child:Center(
                      child: (
                          Text(
                            '장난감',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                  Container(
                    width:80,
                    height:30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),

                    child:Center(
                      child: (
                          Text(
                            '용품',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height:10),

            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(17.0),


                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(30.0),
                      topRight:Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: _selectedValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 18,
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(

                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue = newValue!;
                            });
                          },
                          items: <String>['포인트 지급', '협찬', '후기작성']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),

                      SizedBox(height:20),

                      S_Category(),
                      S_Category(),
                      S_Category(),
                      S_Category(),
                      S_Category(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
