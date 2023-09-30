import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Card(
                color: Colors.greenAccent[100],
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: -40,
                left: 25,
                child: CircleAvatar(
                  radius: 60,
                ),
              ),
              Positioned(
                bottom: 40,
                right: 25,
                child: CircleAvatar(
                  radius: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 100,),
          const Divider(),
          ElevatedButton(
              onPressed: (){
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: const Text("Congratulations."),
                        content: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("You are Passed this Exam"),
                            Text("You are Passed this Exam"),
                            Text("You are Passed this Exam"),
                            Text("You are Passed this Exam"),
                            Text("You are Passed this Exam"),
                          ],
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: (){},
                              child: Text("Good"),
                          ),
                          ElevatedButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("Bad"),
                          )
                        ],
                      );
                    }
                );
              },
              child: Text("Show Alert"))
        ],
      ),
    );
  }
}
