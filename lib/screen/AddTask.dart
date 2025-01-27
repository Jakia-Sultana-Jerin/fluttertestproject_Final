import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  AddTaskState createState() => AddTaskState();
}

class AddTaskState extends State<AddTask> {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3556AB),
        title: const Text("Add New Task"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: const Color(0xFFF3F3F3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Task Name",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _taskController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  hintText: "Enter your task name",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  String taskName = _taskController.text.trim();
                  if (taskName.isNotEmpty) {
                    print('Task Added: $taskName');
                    Navigator.pop(context, taskName); // Pass the task name back
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter a task name."),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF0C2971),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFF3556AB),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x80A8B4DE),
                        blurRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 140),
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
            ],
          ),
        ),
      ),
    );
  }
}