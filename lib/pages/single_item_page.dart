import 'package:flutter/material.dart';

class SingleItemPage extends StatelessWidget {
   SingleItemPage({Key? key,
  required this.img}) : super(key: key);
String img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    Padding(padding: EdgeInsets.only(
      left: 25
    ),child: InkWell(
      onTap: (){},
      child: Icon(Icons.arrow_back_ios_new,),
    ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
