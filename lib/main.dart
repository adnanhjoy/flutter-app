import 'package:app_1/screens/activities/LoginPageActivities.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    NotificationTab(),
    AccountTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengal App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(color: Colors.green),
              child: UserAccountsDrawerHeader(
                accountName: Text("Bengal App"),
                accountEmail: Text("support@bengalapp.com"),
                currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9EUUuSDqv6YdxAqvdLyAcZOLdi8bx2jBPBjhQ0OLj0A&s"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_rounded),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(color: Colors.green),
              child: UserAccountsDrawerHeader(
                accountName: Text("Bengal App"),
                accountEmail: Text("support@bengalapp.com"),
                currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9EUUuSDqv6YdxAqvdLyAcZOLdi8bx2jBPBjhQ0OLj0A&s"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_rounded),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.location_searching),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        child: Image.network(
          "https://i.ibb.co/xmJJ8m4/Screenshot-2024-05-12-154345.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NotificationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications_sharp),
              title: Text('Adnan Hossain'),
              subtitle: Text('Dhanmondi, Dhaka-Bangladesh'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications_sharp),
              title: Text('Farhan Ahmed'),
              subtitle: Text('Bandar-Bazar, Sylhet'),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'), // Replace with your image URL
          ),
          SizedBox(height: 20),
          Text(
            'Adnan Hossain',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add functionality here
            },
            child: Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
