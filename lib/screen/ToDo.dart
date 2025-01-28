import 'package:flutter/material.dart';
import 'package:fluttertestproject/screen/AddTask.dart';
import 'package:fluttertestproject/screen/EditTask.dart';




class ToDo extends StatefulWidget {
  const ToDo({super.key});
  @override
  ToDoState createState() => ToDoState();
}
class ToDoState extends State<ToDo> {
  Widget viewHorizontal(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF3556AB),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.only( top: 22, bottom: 41, left: 32, right: 32),
        margin: const EdgeInsets.only( bottom: 3),
        width: double.infinity,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only( right: 22),
                  width: 50,
                  height: 50,
                  child: Image.network(
                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/cdd02eb7-b8b9-40ab-a360-d225dcfaf43e",
                    fit: BoxFit.fill,
                  )
              ),
              Expanded(
                child: IntrinsicHeight(
                  child: Container(
                    margin: const EdgeInsets.only( top: 8),
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only( bottom: 11, left: 1),
                            child: Text(
                              "Hello, {Jakia Sultana Jerin}",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "{jakiajerin67@email.com}",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFFF3F3F3),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          viewHorizontal(context),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF9EB031),
                                  width: 2,
                                ),
                                color: Color(0xFFCCE53D),
                              ),
                              padding: const EdgeInsets.only( bottom: 32, left: 25, right: 25),
                              margin: const EdgeInsets.only( bottom: 24),
                              width: double.infinity,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only( top: 36, right: 28),
                                        width: 53,
                                        height: 40,
                                        child: Image.network(
                                          "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/00db58c4-06ac-4af4-97eb-33993e8f8d4d",
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    Expanded(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          margin: const EdgeInsets.only( top: 35, right: 4),
                                          width: double.infinity,
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only( bottom: 7),
                                                  child: Text(
                                                    "Go Pro (No Ads)",
                                                    style: TextStyle(
                                                      color: Color(0xFF071C55),
                                                      fontSize: 18,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.06,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "No fuss, no ads, for only \$1 a month",
                                                    style: TextStyle(
                                                      color: Color(0xFF0C2971),
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.06,
                                                    ),
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        color: Color(0xFF071C55),
                                        padding: const EdgeInsets.symmetric(vertical: 29),
                                        width: 66,
                                        child: Column(
                                            children: [
                                              Text(
                                                "\$1",
                                                style: TextStyle(
                                                  color: Color(0xFFF2C94C),
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: const EdgeInsets.all(23),
                              margin: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFF48C25C),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(51),
                                        color: Color(0xFF53DA69),
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.only(right: 21),
                                      width: 40,
                                      child: Center( // Center the content inside the circle
                                        child: Image.network(
                                          "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/56d67aeb-4439-4e55-ace0-fc32a16d5f7e",
                                          fit: BoxFit.cover, // Ensure the image fills the circle properly
                                          height: 18, // Optional: Adjust the height of the image to fit nicely inside the circle
                                          width: 18, // Optional: Adjust the width of the image to fit nicely inside the circle
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Training at the Gym",
                                    style: TextStyle(
                                      color: Color(0xFF8D8D8D),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                      height: 1,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: SizedBox(),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EditTask()), // Replace AddTaskPage() with your page widget
                                    ); },
                                    child: IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xFF071C55),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(6),
                                          ),
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        width: 51,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Edit",
                                              style: TextStyle(
                                                color: Color(0xFF071C55),
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: const EdgeInsets.all(23),
                              margin: const EdgeInsets.only( bottom: 17, left: 16, right: 16),
                              width: double.infinity,
                              child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFF071C55),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(51),
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      margin: const EdgeInsets.only( right: 19),
                                      width: 32,
                                      height: 32,
                                      child: SizedBox(),
                                    ),
                                    Text(
                                      "Play Paddle with friends",
                                      style: TextStyle(
                                        color: Color(0xFF071C55),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        child: SizedBox(),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () { Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => EditTask()), // Replace AddTaskPage() with your page widget
                                      ); },
                                      child: IntrinsicHeight(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xFF071C55),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(4),
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          width: 51,
                                          child: Column(
                                              children: [
                                                Text(
                                                  "Edit",
                                                  style: TextStyle(
                                                    color: Color(0xFF071C55),
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: const EdgeInsets.all(23),
                              margin: const EdgeInsets.only( bottom: 278, left: 16, right: 16),
                              width: double.infinity,
                              child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFF071C55),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(51),
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      margin: const EdgeInsets.only( right: 19),
                                      width: 32,
                                      height: 32,
                                      child: SizedBox(),
                                    ),
                                    Text(
                                      "Burger BBQ with family",
                                      style: TextStyle(
                                        color: Color(0xFF071C55),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        child: SizedBox(),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {  // Navigate to the AddTask page
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => EditTask()), // Replace AddTaskPage() with your page widget
                                        ); },
                                      child: IntrinsicHeight(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xFF071C55),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(4),
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          width: 51,
                                          child: Column(
                                              children: [
                                                Text(
                                                  "Edit",
                                                  style: TextStyle(
                                                    color: Color(0xFF071C55),
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicWidth(
                            child: IntrinsicHeight(
                              child: Container(
                                width: 60,
                                height: 61,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0, // Move the circle to the right side
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 61,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF3556AB),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              strokeAlign: BorderSide.strokeAlignOutside,
                                              color: Color(0xFF113EB1),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              topRight: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                              bottomRight: Radius.circular(100),
                                            ),
                                          ),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x3F000000),
                                              blurRadius: 1,
                                              offset: Offset(0, 3),
                                              spreadRadius: 0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 21, // Adjust the "+" symbol to the right side inside the circle
                                      top: 9,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => AddTask(),
                                            ),
                                          );
                                        },
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 36,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 1,
    ),
    ),
    ),
                                    ),
    ],
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
      ),
    ],
    ),
    ),
    ),
    );
  }
}










