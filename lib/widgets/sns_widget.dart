import 'package:flutter/material.dart';


class Sns extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            children: [
              Image.asset(
                "assets/check.png",
                width:42,
                height:42,
              ),
              Text('SNS 공유 신규 모집',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height:2,
                ),
              ),
            ],
          ),

          SizedBox(height:10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Image.asset(
                "assets/n_img1.png",
                width:115,
                height:115,
              ),

              Image.asset(
                "assets/n_img2.png",
                width:115,
                height:115,
              ),

              Image.asset(
                "assets/n_img3.png",
                width:115,
                height:115,
              ),
            ],
          ),

          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Image.asset(
                "assets/n_img4.png",
                width:115,
                height:115,
              ),

              Image.asset(
                "assets/n_img5.png",
                width:115,
                height:115,
              ),

              Image.asset(
                "assets/n_img6.png",
                width:115,
                height:115,
              ),
            ],
          ),

        ],
      ),
    );

  }
}