import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List img = [
      "Latte",
      "Espresso",
      "Black Coffee",
      "Cold Coffee"
    ];
    return GridView.count(
      shrinkWrap: true,
        childAspectRatio: (150/195),
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,

    children: [
      for(int i=0;i<img.length; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 6,horizontal: 13),

        decoration: BoxDecoration(
          color: Color(0xff212325),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(

              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8

            )
          ]

        ),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("images/${img[i]}.png",
                  width: 120,height: 120,
                  fit: BoxFit.contain,),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 4),

              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(img[i],
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),),
                    // SizedBox(height: 3,),
                    Text("Best Coffe",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,

                    ),),
                  ],
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(
                vertical: 2
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$30",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    
                  ),),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color(0xffE57734),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Icon(CupertinoIcons.add,
                    size: 20,
                    color: Colors.white,
                    ),
                  )
                ],
              ),
              )
            ],
          ),
        )
    ],

    );
  }
}
