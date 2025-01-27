import 'package:flutter/material.dart';
class EditTask extends StatefulWidget {
  const EditTask({super.key});
  @override
  EditTaskState createState() => EditTaskState();
}
class EditTaskState extends State<EditTask> {
  String textField1 = '';
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
                          IntrinsicHeight(
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
                              padding: const EdgeInsets.all(17),
                              margin: const EdgeInsets.only( bottom: 42),
                              width: double.infinity,
                              child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only( right: 125),
                                        width: 14,
                                        height: 15,
                                        child: Image.network(
                                          "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/947a028d-9a06-4304-a8c5-cc280eca1c77",
                                          fit: BoxFit.fill,
                                        )
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Edit Task",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only( bottom: 15, left: 21),
                            child: Text(
                              "Task Name",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFCACACA),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(9),
                                color: Color(0xFFFCFCFC),
                              ),
                              padding: const EdgeInsets.only( top: 24, bottom: 24, left: 18, right: 18),
                              margin: const EdgeInsets.only( bottom: 361, left: 17, right: 17),
                              width: double.infinity,
                              child: TextField(
                                style: TextStyle(
                                  color: Color(0xFF0C2971),
                                  fontSize: 20,
                                ),
                                onChanged: (value) {
                                  setState(() { textField1 = value; });
                                },
                                decoration: InputDecoration(
                                  hintText: "Training at the Gym",
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () { print('Pressed'); },
                            child: IntrinsicWidth(
                              child: IntrinsicHeight(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF0C2971),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xFF3556AB),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x80A8B4DE),
                                        blurRadius: 1,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.only( top: 25, bottom: 25, left: 164, right: 164),
                                  margin: const EdgeInsets.only( left: 19),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Done",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
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