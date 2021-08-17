import 'package:flutter/material.dart';
import 'package:viral/widgets/pet_page.dart';


class Company extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget> [

              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 전체',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),


              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 의류',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),

              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFC4D17),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PetPage()),
                    );
                    print('success');
                  },

                  child: Center(
                    child: Text(
                      '#애완동물',
                      style: TextStyle(
                        color:Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 뷰티',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height:10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget> [
              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 전자제품',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),


              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 문화',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),


              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 식품',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),

              Container(
                width:80,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF612DEF),
                ),
                child: Center(
                  child: (
                      Text('# 맛집',
                        style:TextStyle(
                          color:Color(0xFFFFFFFF),
                        ),)
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height:30),
        ],
      ),
    );
  }

  showMessage(String s) {}
}