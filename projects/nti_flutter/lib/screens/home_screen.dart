import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 80,
        title: Text("Whats App",style: TextStyle(
          color: Colors.black54,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20,),
          Icon(Icons.send),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            children: [

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8,),
                    Text("Search",style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "10:30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter 4",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "9:30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "course flutter ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "5:90",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "nti",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "7:43",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "9:30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "cycle 12 flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "6:30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "3:00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter 14",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "2:00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Flutter ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "9::00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saturn.png"),
                  radius: 20,
                ),
                title: Text(
                  "Cycle 13",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                trailing: Text(
                  "3:00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
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
