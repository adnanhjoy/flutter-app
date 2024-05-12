import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  mySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengal App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        elevation: 10,
        actions: [
          IconButton(onPressed: (){mySnackBar("Seach", context);}, icon: Icon(Icons.search)),
        ],
      ),
      body: Center(
        child: Text("Hello"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Bengal App")),
            ListTile(title: Text("Home"),)
          ],
        ),
      ),
      // endDrawer: (),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {  },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label:"Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Account"),
        ],
        onTap: (int index){
          if(index == 0){
            mySnackBar("Home Page", context);
          }
          if(index == 1){
            mySnackBar("Notification Page", context);
          }
          if(index == 2){
            mySnackBar("Account Page", context);
          }
        },
      ),
    );
  }
}
