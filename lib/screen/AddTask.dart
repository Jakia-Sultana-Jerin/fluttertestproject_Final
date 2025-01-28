import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  AddTaskState createState() => AddTaskState();
}

class AddTaskState extends State<AddTask> {
  String? textField1; // Declare the variable for storing text field input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF3556AB),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x26000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                margin: const EdgeInsets.only(bottom: 42),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 95),
                      width: 14,
                      height: 15,
                      child: Image.network(
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0d516b6d-82ce-4543-a9ac-60e71e775f05",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Add New Task",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Task Name Section
              Container(
                margin: const EdgeInsets.only(top: 25, left: 21),
                child: const Text(
                  "Task Name",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                  ),
                ),
              ),

              // Text Field Section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        height: 60, // Explicitly set the height to match the button
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFCACACA),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xFFFCFCFC),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          style: const TextStyle(
                            color: Color(0xFF0C2971),
                            fontSize: 20,
                          ),
                          onChanged: (value) {
                            setState(() {
                              textField1 = value;
                            });
                          },
                          maxLines: 1,
                          decoration: const InputDecoration(
                            hintText: " ",
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(), // Adds flexible space between elements

              // Done Button Section
              IntrinsicHeight(
                child: InkWell(
                  onTap: () {
                    print('Pressed: $textField1');
                  },
                  child: Container(
                    height: 60, // Same height as the text field
                    width: MediaQuery.of(context).size.width - 50, // Same width as text field
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF0C2971),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xFF3556AB),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x80A8B4DE),
                          blurRadius: 1,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    margin: const EdgeInsets.only(left:25, top: 21, bottom: 30), // Extra spacing below the button
                    child: const Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
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
