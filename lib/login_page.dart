import 'package:flutter/material.dart';
import 'package:hive_database/image_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String pass = '';
TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mamun"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 1.00,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Name : $name"),
                Text("Pass : $pass"),
                const SizedBox(height: 20,),
                TextField(
                  controller: nameController,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  cursorColor: Colors.red,
                  cursorHeight: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  controller: passController,
                  onChanged: (value){
                    setState(() {
                      pass = value;
                    });
                    print("____________________");
                    print("____  $value   _____");
                    print("____________________");
                  },
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  cursorColor: Colors.red,
                  cursorHeight: 10,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "*********",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.key),
                  ),
                ),
                InkWell(
                  onTap: (){
                    print("___ NameController : ${nameController.text}");
                    print("___ PassController : ${passController.text}");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ImagePage()));
                  },
                  child: Card(
                    color: Colors.greenAccent[100],
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    ),
                    shadowColor: Colors.red,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Click",style: TextStyle(color: Colors.red,fontSize: 20),),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const Text("fdgtrgb"),
    );
  }
}
