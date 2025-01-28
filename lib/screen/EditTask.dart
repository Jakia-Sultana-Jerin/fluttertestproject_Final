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

                 Container(

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
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
        width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 125),
                                  width: 14,
                                  height: 15,
                                  child: Image.network(
                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/02fc4a63-2c4a-4a8d-aaab-dad36a8f49da",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
                                    width: double.infinity,
                                    child: Text(
                                      "Edit  Task",

                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Task Name Label

                        Container(
                          margin: const EdgeInsets.only(top: 25, left: 21),
                          child: Text(
                            "Task Name",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                          width: double.infinity, // Ensures both have the same width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25), // Adjust padding to fit text
                                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20), // Reduced margin
                                  width: double.infinity,
                                  child: TextField(
                                    style: TextStyle(

                                      color: Color(0xFF3556AB), // Blue color for the hint text
                                      fontSize: 20,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        textField1 = value;
                                      });
                                    },
                                    maxLines: null, // Allow text field to expand vertically
                                    decoration: InputDecoration(
                                      hintText: "Training at the Gym",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF3556AB), // Blue color for the hint text
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 350), // Reduced space between the text field and button
                              IntrinsicHeight(
                                child: InkWell(
                                  onTap: () {
                                    print('Pressed');
                                  },
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
                                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25), // Adjust padding to fit text
                                    margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),  // Increased vertical padding for equal height
                                    width: double.infinity, // Matches width of the text field
                                    child: Text(
                                      "Done",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
