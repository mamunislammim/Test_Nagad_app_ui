import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     endDrawer: Drawer(
       backgroundColor: Colors.blue.withOpacity(.8),
       width: 300,
       child: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
               opacity: .2,
               image: AssetImage('asset/app_logo.png'))
         ),
         child: Column(
           children: [
             DrawerHeader(
               child: Column(
                 children: [


                   Row(
                     children: [
                       Icon(Icons.account_box),
                       Text("mamnun"),
                     ],
                   ),
                 ],
               ),
               decoration: BoxDecoration(
                 color: Colors.red
               ),
             ),
             ListTile(
               leading: Icon(Icons.key),
               title: Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 20),),
             ),
             ListTile(
               leading: Icon(Icons.key),
               title: Text("Log Out"),
             ),
             ListTile(
               leading: Icon(Icons.key),
               title: Text("Log Out"),
             )
           ],
         ),
       ),
     ),
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  print("Hello ...........");
                },
                onLongPress: (){
                  print(" ______ on Long Pressed  ..  ");
                },
                child: Text("Button")),
            TextButton(
                onPressed: (){},
                child: Text("Text Button")),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.people)),
            InkWell(
              onLongPress: (){
                print("___________ Inkwell ");
              },
              child: ListTile(
                tileColor: Colors.red,
                title: Text("DFge"),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: Colors.red,
              title: InkWell(
                  onTap: (){
                    print("Hello__________");
                  },
                  child: Text("Masddfw")),
            ),
            GestureDetector(
              onTap: (){},
              child: Card(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text("Mamun"),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
